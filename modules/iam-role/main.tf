resource "aws_iam_role" "role" {
  name               = var.role_name
  assume_role_policy = var.trust_policy
  tags               = var.tags
}

resource "aws_iam_role_policy_attachment" "policy_attachment" {
  count      = length(var.policy_arns)
  role       = aws_iam_role.role.name
  policy_arn = var.policy_arns[count.index]
}