module "iam_password_policy" {
  source = "./modules/iam-policy"
}

module "s3_logging" {
  source      = "./modules/s3-logging"
  bucket_name = "aws-secure-logs-kareem"
  environment = "dev"
}

module "cloudtrail" {
  source             = "./modules/cloudtrail"
  trail_name         = "main-cloudtrail"
  destination_bucket = module.s3_logging.logging_bucket_name
  environment        = "dev"
}

#Replace email here to send budget alerts
module "budgets" {
  source             = "./modules/budgets"
  budget_name        = "secure-stack-budget"
  limit_amount       = "5"
  start_date         = "2024-01-01_00:00"
}

module "static_site" {
  source            = "./modules/static-site"
  site_bucket_name  = "kareem-static-site"
  index_document    = "index.html"
  error_document    = "error.html"
  environment       = "dev"
}


module "guardduty" {
  source = "./modules/guardduty"
  count  = var.enable_guardduty ? 1 : 0
}

module "aws_config" {
  source = "./modules/aws-config"
  count  = var.enable_aws_config ? 1 : 0
}

module "securityhub" {
  source = "./modules/securityhub"
  count  = var.enable_securityhub ? 1 : 0
}


