# Core Infrastructure Deployment for Dev Environment

module "core_infrastructure" {
  source = "../modules/01-core"

    short_name    = var.short_name
    short_name_lc = var.short_name_lc
    location      = var.location
    environment   = var.environment

  # Network Configuration
  vnet_address_space              = ["10.0.0.0/16"]
  subnet_avd_address_prefixes     = ["10.10.1.0/24"]
  subnet_bastion_address_prefixes = ["10.10.2.0/24"]
}

# Outputs for easy reference
output "avd_resource_group_name" {
  description = "Name of the AVD Resource Group"
  value       = module.core_infrastructure.rg_avd_name
}

output "log_resource_group_name" {
  description = "Name of the Log Resource Group"
  value       = module.core_infrastructure.rg_log_name
}

output "virtual_network_id" {
  description = "ID of the Virtual Network"
  value       = module.core_infrastructure.vnet_id
}

output "avd_subnet_id" {
  description = "ID of the AVD Subnet"
  value       = module.core_infrastructure.subnet_avd_id
}
