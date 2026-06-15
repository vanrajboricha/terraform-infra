
output "queue_url" {
  value       = aws_sqs_queue.main.url
  description = "SQS queue URL"
}
output "queue_arn" {
  value       = aws_sqs_queue.main.arn
  description = "SQS queue ARN"
}