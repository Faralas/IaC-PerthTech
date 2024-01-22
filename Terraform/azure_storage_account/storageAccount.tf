resource "azurerm_storage_account" "storage" {
  name                     = "dev2${var.storage_account_name}"
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication

  tags = {
    environment = "Test"
  }
}