resource "aws_ebs_volume" "ebs" {
  availability_zone = var.az_1
  size              = 40
  type              = "gp3"
  tags = {
    Project = "NimbusKart"
    Environment = "Staging"
    Owner = "Sparklehood"
    ManagedBy = "terraform"
  }
}
resource "aws_s3_bucket" "s3" {
  bucket = "sparklehood-test-bucket"

  tags = {
    Project = "NimbusKart"
    Environment = "Staging"
    Owner = "Sparklehood"
    ManagedBy = "terraform"
  }
}
resource "aws_s3_bucket_versioning" "s3_versioning" {
  bucket = aws_s3_bucket.s3.bucket
  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_s3_bucket_lifecycle_configuration" "versioning-bucket-config" {
  # Must have bucket versioning enabled first
  depends_on = [aws_s3_bucket_versioning.s3_versioning]

  bucket = aws_s3_bucket.s3.bucket

  rule {
    id = "rule-1"
    filter {}
    noncurrent_version_expiration {
      noncurrent_days = 30
    }
    status = "Enabled"
  }
}