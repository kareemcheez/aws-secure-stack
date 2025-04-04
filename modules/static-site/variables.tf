# Input vars for your static site bucket

variable "site_bucket_name" {
  description = "Name of the S3 bucket for the static site"
  type        = string
}

variable "index_document" {
  description = "Default file to serve"
  type        = string
  default     = "index.html"
}

variable "error_document" {
  description = "Error page"
  type        = string
  default     = "error.html"
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "dev"
}
