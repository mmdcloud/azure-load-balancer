variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "lb-rg"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "vnet_name" {
  description = "Virtual network name"
  type        = string
  default     = "lb-vnet"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Subnet name for backend servers"
  type        = string
  default     = "lb-subnet"
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "load_balancer_name" {
  description = "Name of the load balancer"
  type        = string
  default     = "lb"
}

variable "lb_sku" {
  description = "SKU of the load balancer (Basic or Standard)"
  type        = string
  default     = "Standard"
}

variable "backend_pool_name" {
  description = "Name of the backend pool"
  type        = string
  default     = "lb-backend-pool"
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
  default     = "ubuntu"
}

variable "admin_password" {
  description = "Admin password for the VMs"
  type        = string
  sensitive   = true
  default     = "Mohit@1234"
}

variable "health_probe_name" {
  description = "Name of the health probe"
  type        = string
  default     = "lb-health-probe"
}

variable "health_probe_port" {
  description = "Port for the health probe"
  type        = number
  default     = 80
}

variable "load_balancing_rule_name" {
  description = "Name of the load balancing rule"
  type        = string
  default     = "lb-load-balancing-rule"
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