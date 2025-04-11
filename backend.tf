# backend.tf

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-dev-app-002"
    storage_account_name = "DevOps_Dev2025"
    container_name       = "Development"
    key                  = "Dev_tfstate.tfstate"
    tenant_id            = "648b628e-c17f-4d43-8193-72e3f4d7499d"
    subscription_id      = "24143a81-fcba-4b21-9b28-c910b75e6580"
  }
}