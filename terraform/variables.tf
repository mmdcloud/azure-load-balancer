variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "vnet_name" {
  description = "Virtual network name"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
}

variable "subnet_name" {
  description = "Subnet name for backend servers"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)
}

variable "load_balancer_name" {
  description = "Name of the load balancer"
  type        = string
}

variable "lb_sku" {
  description = "SKU of the load balancer (Basic or Standard)"
  type        = string
  default     = "Standard"
}

variable "backend_pool_name" {
  description = "Name of the backend pool"
  type        = string
}

variable "vm_count" {
  description = "Number of VMs in the backend pool"
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "Size of the VMs"
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "Admin username for the VMs"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VMs"
  type        = string
  sensitive   = true
}

variable "health_probe_name" {
  description = "Name of the health probe"
  type        = string
}

variable "health_probe_port" {
  description = "Port for the health probe"
  type        = number
  default     = 80
}

variable "load_balancing_rule_name" {
  description = "Name of the load balancing rule"
  type        = string
}

variable "frontend_port" {
  description = "Frontend port for the load balancer"
  type        = number
  default     = 80
}

variable "backend_port" {
  description = "Backend port for the load balancer"
  type        = number
  default     = 80
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default = {
    Environment = "Production"
    Terraform   = "true"
  }
}