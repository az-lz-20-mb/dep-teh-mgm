terraform {
    backend "azurerm" {
        storage_account_name = "tfstatestorage2lz20"
        container_name       = "tfstate3"
        key                  = "terraform.tfstate"
        resource_group_name  = "tfstate-storage2"
    }

    required_providers {
        azurerm = {
        source  = "hashicorp/azurerm"
        version = "~> 3.107"
        }
    }
}
provider "azurerm" {
  features {}
}

data "azurerm_client_config" "core" {}

module "enterprise_scale" {
  source = "git::https://github.com:az-lz-20-mb/terraform-azurerm-caf-enterprise-scale.git"
  

  default_location = var.default_location

  providers = {
    azurerm              = azurerm
    azurerm.connectivity = azurerm
    azurerm.management   = azurerm
  }

  root_parent_id = data.azurerm_client_config.core.tenant_id
  root_id        = var.root_id
  root_name      = var.root_name
  library_path = "${path.root}/lib"
  deploy_core_landing_zones = var.deploy_core_landing_zones
 
  custom_landing_zones = {
    for key, value in var.landing_zones : 
    "${var.mg_prefix}-${key}" => {
      display_name = lookup(value, "display_name", "${var.mg_prefix}-${key}")
      parent_management_group_id = value.parent == "root" ? var.root_id : "${var.mg_prefix}-${value.parent}"
      subscription_ids           =  value.subscription_ids
      archetype_config = {
        archetype_id   = value.archetype_id
        parameters     = value.parameters
        access_control = value.access_control
      }
    }
  }
  
}

