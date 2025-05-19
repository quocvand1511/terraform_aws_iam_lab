variable "role_name" {
  description = "Name of the IAM role"
  type        = string
}

variable "trust_policy" {
  description = "JSON trust policy for the IAM role"
  type        = string
}

variable "policy_arns" {
  description = "List of policy ARNs to attach to the role"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags to apply to the IAM role"
  type        = map(string)
  default     = {}
}