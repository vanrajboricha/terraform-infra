# ── S3 Bucket ─────────────────────────────────────────────────────

# ── EC2 Instance ───────────────────────────────────────────────────

# ── RDS Instance ───────────────────────────────────────────────────

# ── SQS Queue ──────────────────────────────────────────────────────
resource "aws_sqs_queue" "main" {
  name                      = "vanbor-SQS-prod"
  delay_seconds             = 0
  max_message_size          = 262144
  message_retention_seconds = 86400
  receive_wait_time_seconds = 10

  tags = {
    Name = "vanbor-SQS-prod"
  }
}

# ── SNS Topic ──────────────────────────────────────────────────────