output "group_arn" {
  description = "ARN of the IAM group"
  value       = aws_iam_group.group.arn
}

output "group_name" {
  description = "Name of the IAM group"
  value       = aws_iam_group.group.name
}