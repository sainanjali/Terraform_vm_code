terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.77.0"
    }

  }
  backend "azurerm" {
    resource_group_name  = "rg-resource1"           # Name of RG where storage account exists
    storage_account_name = "storageaccount30345"    # Storage account name (must be lowercase)
    container_name       = "tfstate"                # Blob container name
    key                  = "prod.terraform.tfstate" # Desired state file name
  }
}

provider "azurerm" {
  features {}
}