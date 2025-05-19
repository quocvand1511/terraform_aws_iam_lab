variable "group_name" {
  description = "Name of the IAM group"
  type        = string
}

variable "policy_arns" {
  description = "List of policy ARNs to attach to the group"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags to apply to the IAM group"
  type        = map(string)
  default     = {}
}