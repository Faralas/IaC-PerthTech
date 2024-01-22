data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "keyvault" {
  name                     = "${var.name-prefix}-${var.key_vault_name}"
  location                 = var.resource_group_location
  resource_group_name      = var.resource_group_name
  tenant_id                = data.azurerm_client_config.current.tenant_id
  purge_protection_enabled = false

  sku_name = var.sku_value

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "get",
    ]

    secret_permissions = [
      "get",
    ]

    storage_permissions = [
      "get",
    ]
  }
}