# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  # resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "storage-rg"
  location = "eastus"
}

# Create storage account
resource "azurerm_storage_account" "storage_account" {
  name                = "storemenow01"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
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