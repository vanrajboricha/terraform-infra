# ── S3 Bucket ─────────────────────────────────────────────────────
resource "aws_s3_bucket" "main" {
  bucket = "vanraj-s3-bucket-dev"
}

resource "aws_s3_bucket_versioning" "main" {
  count  = var.s3_versioning ? 1 : 0
  bucket = aws_s3_bucket.main.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "main" {
  count  = var.s3_encryption ? 1 : 0
  bucket = aws_s3_bucket.main.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "main" {
  bucket                  = aws_s3_bucket.main.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# ── EC2 Instance ───────────────────────────────────────────────────

# ── RDS Instance ───────────────────────────────────────────────────

# ── SQS Queue ──────────────────────────────────────────────────────

# ── SNS Topic ──────────────────────────────────────────────────────