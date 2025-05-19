variable "policy_name" {
  description = "Name of the IAM policy"
  type        = string
}

variable "policy_description" {
  description = "Description of the IAM policy"
  type        = string
  default     = ""
}

variable "policy_document" {
  description = "JSON policy document"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the IAM policy"
  type        = map(string)
  default     = {}
}