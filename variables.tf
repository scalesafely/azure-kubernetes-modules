variable "project_name" {
  type    = string
  
}

variable "subscription_id" {
  type    = string
  
}

variable "tenant_id" {
  type    = string
  
}

variable "resource_group_name" {
  type    = string
  
}

variable "storage_account_name" {
  type    = string
  
}

variable "container_name" {
  type    = string
  
}

variable "azurerm_key" {
  type    = string
  default = "tfstate"
}

variable "location" {
  type    = string
  
}

variable "acr_name" {
  type    = string
  
}

variable "storage_account_name_for_persistence" {
  type    = string
  
}

variable "mysql_sku_name" {
  type    = string
  default = "GP_Gen5_2"
}

variable "mysql_server_name" {
  type = string
  
}

variable "mysql_username" {
  type    = string
  
}

variable "mysql_password" {
  type    = string
  
}

variable "mysql_storage_mb" {
  type    = number
  
}

variable "mysql_version" {
  type    = string
  default = "8.0"
}

variable "mysql_backup_retention_days" {
  type    = number
  
}

variable "mysql_infrastructure_encryption_enabled" {
  type    = bool
  default = false
}

variable "mysql_public_network_access_enabled" {
  type    = bool
  default = true
}

variable "mysql_ssl_enforcement_enabled" {
  type    = bool
  default = false
}


variable "mysql_ssl_minimal_tls_version_enforced" {
  type    = string
  default = "TLSEnforcementDisabled"
}

variable "mysql_firewall_rules" {
  type = map(object({
    name             = string
    start_ip_address = string
    end_ip_address   = string
  }))
}

variable "aks_cluster_name" {
  type = string
  
}

variable "aks_default_node_pool_name" {
  type = string
  
}

variable "aks_default_node_count" {
  type = number
  
}

variable "aks_default_node_vm_size" {
  type = string
  default = "Standard_D2_v3"
}

variable "aks_node_pool_name" {
  type = string
  
}

variable "aks_node_count" {
  type = number
  
}

variable "aks_node_vm_size" {
  type = string
  default = "Standard_D2_v3"
}

variable "aks_dns_prefix" {
  type = string
  
}

variable "resource_group_id" {
  type = string
  
}

variable "keyvault_name" {
  type    = string
  
}

variable "keyvault_enabled_for_disk_encryption" {
  type    = bool
  default = true
}

variable "keyvault_soft_delete_retention_days" {
  type    = number
  default = 7
}

variable "keyvault_purge_protection_enabled" {
  type    = bool
  default = false
}

variable "keyvault_sku_name" {
  type    = string
  
}

variable "vnet_name" {
  type = string
  
}

variable "vnet_address_space" {
  type = list(string)
  
}

variable "aks_subnet_name" {
  type = string
  
}

variable "appgw_subnet_name" {
  type = string
  
}

variable "aks_address_subnet_prefixes" {
  type = list(string)
  
}

variable "appgw_address_prefixes" {
  type = list(string)
  
}

variable "azurerm_subnet_name" {
  type = string
  
}

variable "azurerm_subnet_address_prefixes" {
  type = list(string)
  
}

