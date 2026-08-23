variable "subscription_name" {
  type = string
}

variable "subscription_alias" {
  type = string
}

variable "billing_scope" {
  type = string
}

variable "workload" {
  type = string
  default = "Production"
}

variable "management_group_id" {
  type = string
}

variable "owner_object_ids" {
  type = list(string)
  default = []
}

variable "contributor_object_ids" {
  type = list(string)
  default = []
}

variable "policy_assignments" {
  type = map(string)
  default = {}
}

variable "budget_amount" {
  type = number
  default = 1000
}

variable "tags" {
  type = map(string)
  default = {}
}