# This needs the destination-bucket name and an optional tag

variable "trail_name" {
  description = "Name of the CloudTrail trail"
  type        = string
  default     = "cloudtrail-main"
}

variable "destination_bucket" {
  description = "S3 bucket where CloudTrail will send logs"
  type        = string
}

variable "environment" {
  description = "Environment tag (dev/staging/prod)"
  type        = string
  default     = "dev"
}
