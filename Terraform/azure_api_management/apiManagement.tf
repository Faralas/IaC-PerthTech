resource "azurerm_api_management" "api_mgmt" {
  name                = "api-management-service"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  publisher_name      = "My Company"
  publisher_email     = "company@mycompany.com"

  sku_name = "Developer_1"
}
