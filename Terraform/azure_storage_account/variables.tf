#tfvars
variable "resource_group_name" {
  type = string
}

variable "resource_group_location" {
  type = string
}

#locals
variable "storage_account_name" {
  type    = string
  default = "rgpystorage"
}

variable "account_tier" {
  type    = string
  default = "Standard"
}

variable "account_replication" {
  type    = string
  default = "LRS"
}