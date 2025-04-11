terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.6.0"
    }
  }
}



/*data "azurerm_key_vault_secret" "client_id" {
  name         = "client-id"
  key_vault_id = "azurerm_key_vault.terraform-vault88.id"
}

data "azurerm_key_vault_secret" "client_secret" {
  name         = "client-secret"
  key_vault_id = "azurerm_key_vault.terraform-vault88.id"
}
locals {
  client_id     = data.azurerm_key_vault_secret.client_id.value
  client_secret = data.azurerm_key_vault_secret.client_secret.value
}
/*

data "azurerm_user_assigned_identity" "example" {
  name                = "mid-dev-trfm-001"
  resource_group_name = "rg-dev-app-001"
  location            = "North Europe"
}


output "uai_client_id" {
  value = data.azurerm_user_assigned_identity.example.client_id
}

output "uai_principal_id" {
  value = data.azurerm_user_assigned_identity.example.principal_id
}

output "uai_tenant_id" {
  value = data.azurerm_user_assigned_identity.example.tenant_id
}

output "uai_resource_group_name" {
  value = data.azurerm_user_assigned_identity.example.resource_group_name
}

provider "azurerm" {
  features {}
 /* client_id       = "10184fbc-168b-423f-a39e-6d5c5a87bbd3"
  client_secret   = "z5M8Q~Zc2J~MVO2psVLuzI4UzXDh_QI3.Iyh3cfx"
  tenant_id       = "648b628e-c17f-4d43-8193-72e3f4d7499d"
  subscription_id = "24143a81-fcba-4b21-9b28-c910b75e6580"
  use_msi = true
  msi_endpoint = "http://169.254.169.254/metadata/identity/oauth2/token"
  client_id = data.azurerm_user_assigned_identity.example.client_id
}
data "azurerm_key_vault" "example" {
  name                = "terraform-vault88"
  resource_group_name = "rg-dev-app-002"
}

data "azurerm_key_vault_secret" "test" {
  name         = "client-secret"
  key_vault_id = data.azurerm_key_vault.example.id
  
}*/



provider "azurerm" {
  features {}
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}



/*provider "azurerm" {
  features {}
  client_id       = local.client_id
  client_secret   = local.client_secret
  tenant_id       = "648b628e-c17f-4d43-8193-72e3f4d7499d"
  subscription_id = "24143a81-fcba-4b21-9b28-c910b75e6580"
*/
resource "azurerm_resource_group" "appgrp1" {
  name     = "rg-dev-app-003"
  location = "North Europe"
}
