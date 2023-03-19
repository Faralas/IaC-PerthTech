variable "storage_account_name" {
  type = string
  default = "rg-py-storage"
}

variable "account_tier" {
  type = string
  default = "Standard"
}

variable "account_replication" {
  type = string
  default = "LRS"
}