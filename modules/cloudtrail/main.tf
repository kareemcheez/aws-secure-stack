# Multi-region CloudTrail. 
# Sends logs to the secure logging bucket (var.destination_bucket).

resource "aws_cloudtrail" "main" {
  name                          = var.trail_name
  s3_bucket_name                = var.destination_bucket
  include_global_service_events = true
  is_multi_region_trail         = true
  enable_log_file_validation    = true

  tags = {
    Name        = var.trail_name
    Environment = var.environment
  }
}
