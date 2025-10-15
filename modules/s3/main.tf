# modules/s3/main.tf
resource "aws_s3_bucket" "video" {
  bucket = var.bucket_name
}