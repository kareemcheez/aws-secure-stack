output "logging_bucket_name" {
  description = "The name of the logging S3 bucket"
  value       = aws_s3_bucket.logging_bucket.bucket
}
