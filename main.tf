#ACR Module
module "scafe_acr" {
  source = "git::http://gitlab.aodb.dev/scafe/library/terraform/modules/azure/scafe_acr4aks.git?ref=1.0.0"

  #Variables
  resource_group_name   = var.resource_group_name
  location              = var.location
  acr_name              = var.acr_name   
  subnet_id             = module.scafe_virtual_network.subnet_id
}


#Storage Module
module "scafe_storage_module" {
  source = "git::http://gitlab.aodb.dev/scafe/library/terraform/modules/azure/scafe_storage4aks.git?ref=1.0.0"
  
  #Variables
  resource_group_name      = var.resource_group_name
  location                 = var.location
  storage_account_name     = var.storage_account_name_for_persistence
}

#Virtual Network Module
module "scafe_virtual_network" {
  source = "git::http://gitlab.aodb.dev/scafe/library/terraform/modules/azure/scafe_network4aks.git?ref=1.0.0"
  
  #Variables
  resource_group_name = var.resource_group_name
  location                        = var.location
  storage_account_id              = module.scafe_storage_module.storage_account_id 
  mysql_resource_id               = module.scafe_mysql.mysql_resource_id
  storage_account_name            = var.storage_account_name_for_persistence
  vnet_name                       = var.vnet_name
  vnet_address_space              = var.vnet_address_space
  aks_subnet_name                 = var.aks_subnet_name
  aks_address_subnet_prefixes     = var.aks_address_subnet_prefixes
  appgw_address_prefixes          = var.appgw_address_prefixes
  azurerm_subnet_name             = var.azurerm_subnet_name
  azurerm_subnet_address_prefixes = var.azurerm_subnet_address_prefixes
  appgw_subnet_name               = var.appgw_subnet_name
}

#Scafe MySQL Module
module "scafe_mysql" {
  source = "git::http://gitlab.aodb.dev/scafe/library/terraform/modules/azure/scafe_mysql4aks.git?ref=1.0.0"
  
  #Variables
  mysql_server_name                       = var.mysql_server_name
  resource_group_name                     = var.resource_group_name
  location                                = var.location
  mysql_sku_name                          = var.mysql_sku_name
  mysql_username                          = var.mysql_username
  mysql_password                          = var.mysql_password
  mysql_storage_mb                        = var.mysql_storage_mb
  mysql_version                           = var.mysql_version
  mysql_backup_retention_days             = var.mysql_backup_retention_days
  mysql_infrastructure_encryption_enabled = var.mysql_infrastructure_encryption_enabled
  mysql_public_network_access_enabled     = var.mysql_public_network_access_enabled
  mysql_ssl_enforcement_enabled           = var.mysql_ssl_enforcement_enabled
  mysql_ssl_minimal_tls_version_enforced  = var.mysql_ssl_minimal_tls_version_enforced
  mysql_firewall_rules                    = var.mysql_firewall_rules
}

#AKS Module
module "scafe_aks" {
  source = "git::http://gitlab.aodb.dev/scafe/library/terraform/modules/azure/scafe_acr4aks.git?ref=1.0.0"
  
  #Variables
  resource_group_name                     = var.resource_group_name
  location                                = var.location
  storage_account_id                      = module.scafe_storage_module.storage_account_id 
  mysql_resource_id                       = module.scafe_mysql.mysql_resource_id
  aks_cluster_name                        = var.aks_cluster_name
  aks_default_node_pool_name              = var.aks_default_node_pool_name
  aks_default_node_count                  = var.aks_default_node_count
  aks_default_node_vm_size                = var.aks_default_node_vm_size
  aks_node_pool_name                      = var.aks_node_pool_name
  aks_node_count                          = var.aks_node_count
  aks_node_vm_size                        = var.aks_node_vm_size
  aks_dns_prefix                          = var.aks_dns_prefix
  aks_subnet_id                           = module.scafe_virtual_network.aks_subnet_id
  acr_resource_id                         = module.scafe_acr.acr_resource_id
  application_gateway_id                  = module.scafe_virtual_network.application_gateway_id
  resource_group_id                       =  var.resource_group_id
}

#KeyVault Module
module "scafe_key_vault" {
  source = "git::http://gitlab.aodb.dev/scafe/library/terraform/modules/azure/scafe_kv4aks.git?ref=1.0.0"
  
  #Variables
  resource_group_name                     = var.resource_group_name
  location                                = var.location
  keyvault_name                           = var.keyvault_name
  keyvault_enabled_for_disk_encryption    = var.keyvault_enabled_for_disk_encryption
  keyvault_purge_protection_enabled       = var.keyvault_purge_protection_enabled
  keyvault_soft_delete_retention_days     = var.keyvault_soft_delete_retention_days
  tenant_id                               = var.tenant_id
  keyvault_sku_name                       = var.keyvault_sku_name
  aks_principal_id                        = module.scafe_aks.aks_principal_id
  aks_object_id                           = module.scafe_aks.aks_object_id
}

#k8s tools Module
module "scafe_k8s_tools" {
  source = "./modules/k8s-tools"
  
  depends_on = [ module.scafe_aks ]
}


