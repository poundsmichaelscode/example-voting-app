variable "aws_region" {
  description = "AWS region for the TS DevOps Capstone."
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the future Kubernetes cluster."
  type        = string
  default     = "ts-voting-capstone"
}
