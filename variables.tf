# You can override these in a .tfvars file or directly in the CLI

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

# Feature toggles to avoid charges — we'll use these to conditionally deploy modules
variable "enable_guardduty" {
  description = "Toggle to enable GuardDuty"
  type        = bool
  default     = false
}

variable "enable_aws_config" {
  description = "Toggle to enable AWS Config"
  type        = bool
  default     = false
}

variable "enable_securityhub" {
  description = "Toggle to enable AWS SecurityHub"
  type        = bool
  default     = false
}
