variable "budget_name" {
  description = "Name of the budget"
  type        = string
  default     = "monthly-budget"
}

variable "limit_amount" {
  description = "Monthly spending limit in USD"
  type        = string
  default     = "5" # $5 is perfect for testing/free-tier
}

variable "start_date" {
  description = "Start date for budget in YYYY-MM-DD format"
  type        = string
  default     = "2024-01-01"
}
