output "configured_region" {
  description = "Configured AWS region."
  value       = var.aws_region
}

output "planned_cluster_name" {
  description = "Planned Kubernetes cluster name."
  value       = var.cluster_name
}
