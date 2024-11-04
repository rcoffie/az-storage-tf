# Create storage account
resource "azurerm_storage_account" "storage_account" {
  name                = "storemenow01"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  account_tier        = "Standard"
  account_kind        = "StorageV2"

  account_replication_type = "GRS"

  tags = {
    environment = "prod"
  }
}

# Create container
resource "azurerm_storage_container" "storage_container1" {
  name                  = "container1"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}


# Creae file share
resource "azurerm_storage_share" "file_share1" {
  name                 = "sharename"
  storage_account_name = azurerm_storage_account.storage_account.name
  quota                = 50
}