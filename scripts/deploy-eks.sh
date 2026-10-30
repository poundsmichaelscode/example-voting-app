#!/usr/bin/env bash
set -euo pipefail

NAMESPACE="voting-app"
RELEASE="voting-app"
CLUSTER="ts-voting-capstone"
REGION="us-east-1"

IMAGE_TAG="${1:?Usage: ./scripts/deploy-eks.sh <published-image-tag>}"

if [[ ! "$IMAGE_TAG" =~ ^[a-f0-9]{40}$ ]]; then
  echo "ERROR: Image tag must be a full 40-character Git commit SHA."
  exit 1
fi

echo "===== VERIFY AWS IDENTITY ====="
aws sts get-caller-identity --output json

echo "===== VERIFY KUBERNETES CONTEXT ====="
kubectl config current-context

echo "===== VERIFY TARGET CLUSTER ====="
CURRENT_CLUSTER="$(kubectl config view --minify -o jsonpath='{.clusters[0].name}')"

if [[ "$CURRENT_CLUSTER" != *"$CLUSTER"* ]]; then
  echo "ERROR: Current Kubernetes context does not match $CLUSTER"
  exit 1
fi

echo "===== VALIDATE HELM ====="
helm lint helm/voting-app --strict

echo "===== DEPLOY PUBLISHED IMAGES ====="
helm upgrade "$RELEASE" ./helm/voting-app \
  --namespace "$NAMESPACE" \
  --reuse-values \
  --set images.vote.tag="$IMAGE_TAG" \
  --set images.result.tag="$IMAGE_TAG" \
  --set images.worker.tag="$IMAGE_TAG" \
  --atomic \
  --timeout 5m

echo "===== APPLICATION STATUS ====="
kubectl get pods -n "$NAMESPACE"

echo "===== HELM HISTORY ====="
helm history "$RELEASE" -n "$NAMESPACE"
