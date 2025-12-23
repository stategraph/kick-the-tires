# Core Infrastructure Module
# Creates foundational Azure resources: Resource Groups, Virtual Network, and Subnets

# AVD Resource Group
resource "azurerm_resource_group" "rg_avd" {
  name     = "rg-${var.short_name}-avd"
  location = var.location

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
    Purpose     = "Azure Virtual Desktop"
  }
}

# Log Resource Group
resource "azurerm_resource_group" "rg_log" {
  name     = "rg-${var.short_name}-log"
  location = var.location

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
    Purpose     = "Logging and Monitoring"
  }
}

# Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-${var.short_name}"
  location            = azurerm_resource_group.rg_avd.location
  resource_group_name = azurerm_resource_group.rg_avd.name
  address_space       = var.vnet_address_space

  tags = {
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

# AVD Subnet
resource "azurerm_subnet" "subnet_avd" {
  name                 = "snet-${var.short_name}-avd"
  resource_group_name  = azurerm_resource_group.rg_avd.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_avd_address_prefixes
}

# Bastion Subnet
resource "azurerm_subnet" "subnet_bastion" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = azurerm_resource_group.rg_avd.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_bastion_address_prefixes
}
