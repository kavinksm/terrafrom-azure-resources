terraform {
  backend "azurerm" {
    resource_group_name  = "titanrg"
    storage_account_name = "kavinksmtitanstorage"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
  }
}
