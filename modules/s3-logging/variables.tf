variable "bucket_name" {
  description = "Name of the logging bucket"
  type        = string
}

variable "environment" {
  description = "Environment tag (e.g. dev, staging, prod)"
  type        = string
  default     = "dev"
}
