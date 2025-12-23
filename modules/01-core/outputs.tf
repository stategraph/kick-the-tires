# Outputs from Core Infrastructure - used by other deployments

output "rg_avd_name" {
  description = "Name of the AVD Resource Group"
  value       = azurerm_resource_group.rg_avd.name
}

output "rg_avd_id" {
  description = "ID of the AVD Resource Group"
  value       = azurerm_resource_group.rg_avd.id
}

output "rg_avd_location" {
  description = "Location of the AVD Resource Group"
  value       = azurerm_resource_group.rg_avd.location
}

output "rg_log_name" {
  description = "Name of the Log Resource Group"
  value       = azurerm_resource_group.rg_log.name
}

output "rg_log_id" {
  description = "ID of the Log Resource Group"
  value       = azurerm_resource_group.rg_log.id
}

output "rg_log_location" {
  description = "Location of the Log Resource Group"
  value       = azurerm_resource_group.rg_log.location
}

output "vnet_id" {
  description = "ID of the Virtual Network"
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  description = "Name of the Virtual Network"
  value       = azurerm_virtual_network.vnet.name
}

output "subnet_avd_id" {
  description = "ID of the AVD Subnet"
  value       = azurerm_subnet.subnet_avd.id
}

output "subnet_avd_name" {
  description = "Name of the AVD Subnet"
  value       = azurerm_subnet.subnet_avd.name
}

output "subnet_bastion_id" {
  description = "ID of the Bastion Subnet"
  value       = azurerm_subnet.subnet_bastion.id
}

output "subnet_bastion_name" {
  description = "Name of the Bastion Subnet"
  value       = azurerm_subnet.subnet_bastion.name
}
