provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "sql_rg" {
  name = var.resource_group_name
}


resource "azurerm_mssql_server" "server" {
  name                         = var.server_name
  resource_group_name          = data.azurerm_resource_group.sql_rg.name
  location                     = data.azurerm_resource_group.sql_rg.location
  version                      = var.mssql_version
  administrator_login          = var.login
  administrator_login_password = var.password
}

