variable "allowed_api_cidr" {
  description = "Public IPv4 CIDR allowed to access the EKS API."
  type        = string
  nullable    = false

  validation {
    condition = can(cidrhost(var.allowed_api_cidr, 0)) && (
      can(regex("/32$", var.allowed_api_cidr))
    )
    error_message = "Use a single IPv4 address in /32 CIDR notation."
  }
}

variable "node_instance_type" {
  description = "EC2 instance type for the managed node group."
  type        = string
  default     = "t3.medium"
}
