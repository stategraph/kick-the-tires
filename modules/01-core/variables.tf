# Variables for Core Infrastructure Module

variable "short_name" {
  description = "Short name for resource naming"
  type        = string
}

variable "short_name_lc" {
  description = "Short name in lowercase for resource naming"
  type        = string
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "USGov Virginia"
}

variable "environment" {
  description = "Environment name (dev, prod, etc.)"
  type        = string
  default     = "dev"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_avd_address_prefixes" {
  description = "Address prefixes for the AVD subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "subnet_bastion_address_prefixes" {
  description = "Address prefixes for the Bastion subnet"
  type        = list(string)
  default     = ["10.0.2.0/24"]
}
