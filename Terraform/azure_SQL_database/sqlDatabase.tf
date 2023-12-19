resource "azurerm_sql_server" "sqlserver" {
  name                         = "my-sqlserver"
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"
  administrator_login          = "sqladmin"
  administrator_login_password = "my-super-secure-password"
}

resource "azurerm_sql_database" "sqldb" {
  name                = "my-database"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  server_name         = azurerm_sql_server.sqlserver.name

  // ... (configuración de performance, tier, etc.) ...
}
