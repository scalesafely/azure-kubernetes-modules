variable "project_name" {
  type    = string
  default = "aks_modules"
}

variable "subscription_id" {
  type    = string
  default = "367f72ee-5c6f-4c07-b85d-6652ebde98ba"
}

variable "tenant_id" {
  type    = string
  default = "227c59f6-f5df-49d3-9dd6-b55e2db1e690"
}

variable "resource_group_name" {
  type    = string
  default = "training"
}

variable "storage_account_name" {
  type    = string
  default = "scafetrainingsta"
}

variable "container_name" {
  type    = string
  default = "tsftate"
}

variable "azurerm_key" {
  type    = string
  default = "tfstate"
}

variable "location" {
  type    = string
  default = "West Europe"
}

variable "acr_name" {
  type    = string
  default = "102307121336"
}

variable "storage_account_name_for_persistence" {
  type    = string
  default = "gsa2307121336"
}

variable "mysql_sku_name" {
  type    = string
  default = "GP_Gen5_2"
}

variable "mysql_server_name" {
  type = string
  default = "website2307121336"
}

variable "mysql_username" {
  type    = string
  default = "scafe_user"
}

variable "mysql_password" {
  type    = string
  default = "6k2&/M_=yf8<j7<"
}

variable "mysql_storage_mb" {
  type    = number
  default = 171008
}

variable "mysql_version" {
  type    = string
  default = "8.0"
}

variable "mysql_backup_retention_days" {
  type    = number
  default = 7
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
  default = "akscluster2307121336"
}

variable "aks_default_node_pool_name" {
  type = string
  default = "p2307121336"
}

variable "aks_default_node_count" {
  type = number
  default = 1
}

variable "aks_default_node_vm_size" {
  type = string
  default = "Standard_D2_v3"
}

variable "aks_node_pool_name" {
  type = string
  default = "p230712133"
}

variable "aks_node_count" {
  type = number
  default = 1
}

variable "aks_node_vm_size" {
  type = string
  default = "Standard_D2_v3"
}

variable "aks_dns_prefix" {
  type = string
  default = "cluster-dns"
}

variable "resource_group_id" {
  type = string
  default = "/subscriptions/367f72ee-5c6f-4c07-b85d-6652ebde98ba/resourceGroups/training"
}

variable "keyvault_name" {
  type    = string
  default = "aks-keyvault"
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
  default = "standard"
}

variable "vnet_name" {
  type = string
  default = "main-vnet"
}

variable "vnet_address_space" {
  type = list(string)
  default = ["10.1.0.0/16"]
}

variable "aks_subnet_name" {
  type = string
  default = "aks-subnet"
}

variable "appgw_subnet_name" {
  type = string
  default = "appgw-subnet"
}

variable "aks_address_subnet_prefixes" {
  type = list(string)
  default = ["10.1.1.0/24"]
}

variable "appgw_address_prefixes" {
  type = list(string)
  default = ["10.1.2.0/24"]
}

variable "azurerm_subnet_name" {
  type = string
  default = "subnet"
}

variable "azurerm_subnet_address_prefixes" {
  type = list(string)
  default = ["10.1.3.0/24"]
}

