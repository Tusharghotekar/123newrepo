

resource "azurerm_resource_group" "newrg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "newstorage" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}