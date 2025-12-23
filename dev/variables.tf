variable "short_name" {
  description = "Short name for resources"
  type        = string
}

variable "short_name_lc" {
  description = "Short name in lowercase for resources"
  type        = string
}

variable "location" {
  description = "Azure region for resource deployment"
  type        = string
}

variable "environment" {
  description = "Environment name (e.g., dev, prod)"
  type        = string
}
