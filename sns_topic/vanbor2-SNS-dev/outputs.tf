
output "topic_arn" {
  value       = aws_sns_topic.main.arn
  description = "SNS topic ARN"
}