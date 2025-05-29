variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "ecr_repository_name" {
  type    = string
  default = "medusa-backend"
}

variable "image_url" {
  description = "Full ECR image URI"
  type        = string
}

variable "database_url" {
  description = "Database connection URL"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for ECS tasks"
  type        = list(string)
}

variable "security_group_id" {
  description = "Security group ID to attach to ECS tasks"
  type        = string
}
