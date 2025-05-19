resource "aws_iam_group" "group" {
  name = var.group_name
}

resource "aws_iam_group_policy_attachment" "policy_attachment" {
  count      = length(var.policy_arns)
  group      = aws_iam_group.group.name
  policy_arn = var.policy_arns[count.index]
}