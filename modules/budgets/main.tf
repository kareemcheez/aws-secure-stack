# This sets a monthly cost alert 
# The email subscriber must still be added manually in the AWS Console!
resource "aws_budgets_budget" "monthly_budget" {
  name              = var.budget_name
  budget_type       = "COST"
  limit_amount      = var.limit_amount
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  time_period_start = var.start_date
}


