output "website_endpoint" {
  description = "Public S3 website URL"
  value       = aws_s3_bucket_website_configuration.site_config.website_endpoint
}
