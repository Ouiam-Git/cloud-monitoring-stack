variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-west-2"
}

variable "project_name" {
  description = "Project name used as prefix for all resources"
  type        = string
  default     = "cloud-monitoring"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.small"
}

variable "public_key_path" {
  description = "Path to the SSH public key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "private_key_path" {
  description = "Path to the SSH private key (used in Ansible inventory)"
  type        = string
  default     = "~/.ssh/id_rsa"
}

variable "allowed_cidr" {
  description = "Your IP CIDR for SSH access (e.g. 203.0.113.0/32)"
  type        = string
  default     = "0.0.0.0/0" # Restrict this in production!
}
