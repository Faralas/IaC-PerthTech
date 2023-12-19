resource "azurerm_key_vault" "keyvault" {
  name                        = "my-key-vault"
  location                    = azurerm_resource_group.rg.location
  resource_group_name         = azurerm_resource_group.rg.name
  tenant_id                   = var.tenant_id
  sku_name                    = "standard"

  // ... (configuración de políticas de acceso, etc.) ...
}
