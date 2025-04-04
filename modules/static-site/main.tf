# Creates the base bucket
resource "aws_s3_bucket" "site" {
  bucket = var.site_bucket_name

  tags = {
    Name        = var.site_bucket_name
    Environment = var.environment
  }
}

# Adds static site configuration (index + error page)
resource "aws_s3_bucket_website_configuration" "site_config" {
  bucket = aws_s3_bucket.site.id

  index_document {
    suffix = var.index_document
  }

  error_document {
    key = var.error_document
  }
}

# Public read policy 
resource "aws_s3_bucket_policy" "allow_public_read" {
  bucket = aws_s3_bucket.site.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect    = "Allow",
        Principal = "*",
        Action    = ["s3:GetObject"],
        Resource  = "${aws_s3_bucket.site.arn}/*"
      }
    ]
  })
}
