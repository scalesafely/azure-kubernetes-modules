<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_acme"></a> [acme](#requirement\_acme) | 2.11.1 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | 2.30.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.30.0 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | >= 1.7.0 |
| <a name="requirement_mysql"></a> [mysql](#requirement\_mysql) | ~> 3.0.34 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | = 4.0.4 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_scafe_acr"></a> [scafe\_acr](#module\_scafe\_acr) | git::http://gitlab.aodb.dev/scafe/library/terraform/modules/azure/scafe_acr4aks.git | 1.0.0 |
| <a name="module_scafe_aks"></a> [scafe\_aks](#module\_scafe\_aks) | git::http://gitlab.aodb.dev/scafe/library/terraform/modules/azure/scafe_acr4aks.git | 1.0.0 |
| <a name="module_scafe_k8s_tools"></a> [scafe\_k8s\_tools](#module\_scafe\_k8s\_tools) | ./modules/k8s-tools | n/a |
| <a name="module_scafe_key_vault"></a> [scafe\_key\_vault](#module\_scafe\_key\_vault) | git::http://gitlab.aodb.dev/scafe/library/terraform/modules/azure/scafe_kv4aks.git | 1.0.0 |
| <a name="module_scafe_mysql"></a> [scafe\_mysql](#module\_scafe\_mysql) | git::http://gitlab.aodb.dev/scafe/library/terraform/modules/azure/scafe_mysql4aks.git | 1.0.0 |
| <a name="module_scafe_storage_module"></a> [scafe\_storage\_module](#module\_scafe\_storage\_module) | git::http://gitlab.aodb.dev/scafe/library/terraform/modules/azure/scafe_storage4aks.git | 1.0.0 |
| <a name="module_scafe_virtual_network"></a> [scafe\_virtual\_network](#module\_scafe\_virtual\_network) | git::http://gitlab.aodb.dev/scafe/library/terraform/modules/azure/scafe_network4aks.git | 1.0.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acr_name"></a> [acr\_name](#input\_acr\_name) | n/a | `string` | `"102307121336"` | no |
| <a name="input_aks_address_subnet_prefixes"></a> [aks\_address\_subnet\_prefixes](#input\_aks\_address\_subnet\_prefixes) | n/a | `list(string)` | <pre>[<br>  "10.1.1.0/24"<br>]</pre> | no |
| <a name="input_aks_cluster_name"></a> [aks\_cluster\_name](#input\_aks\_cluster\_name) | n/a | `string` | `"akscluster2307121336"` | no |
| <a name="input_aks_default_node_count"></a> [aks\_default\_node\_count](#input\_aks\_default\_node\_count) | n/a | `number` | `1` | no |
| <a name="input_aks_default_node_pool_name"></a> [aks\_default\_node\_pool\_name](#input\_aks\_default\_node\_pool\_name) | n/a | `string` | `"p2307121336"` | no |
| <a name="input_aks_default_node_vm_size"></a> [aks\_default\_node\_vm\_size](#input\_aks\_default\_node\_vm\_size) | n/a | `string` | `"Standard_D2_v3"` | no |
| <a name="input_aks_dns_prefix"></a> [aks\_dns\_prefix](#input\_aks\_dns\_prefix) | n/a | `string` | `"cluster-dns"` | no |
| <a name="input_aks_node_count"></a> [aks\_node\_count](#input\_aks\_node\_count) | n/a | `number` | `1` | no |
| <a name="input_aks_node_pool_name"></a> [aks\_node\_pool\_name](#input\_aks\_node\_pool\_name) | n/a | `string` | `"p230712133"` | no |
| <a name="input_aks_node_vm_size"></a> [aks\_node\_vm\_size](#input\_aks\_node\_vm\_size) | n/a | `string` | `"Standard_D2_v3"` | no |
| <a name="input_aks_subnet_name"></a> [aks\_subnet\_name](#input\_aks\_subnet\_name) | n/a | `string` | `"aks-subnet"` | no |
| <a name="input_appgw_address_prefixes"></a> [appgw\_address\_prefixes](#input\_appgw\_address\_prefixes) | n/a | `list(string)` | <pre>[<br>  "10.1.2.0/24"<br>]</pre> | no |
| <a name="input_appgw_subnet_name"></a> [appgw\_subnet\_name](#input\_appgw\_subnet\_name) | n/a | `string` | `"appgw-subnet"` | no |
| <a name="input_azurerm_key"></a> [azurerm\_key](#input\_azurerm\_key) | n/a | `string` | `"tfstate"` | no |
| <a name="input_azurerm_subnet_address_prefixes"></a> [azurerm\_subnet\_address\_prefixes](#input\_azurerm\_subnet\_address\_prefixes) | n/a | `list(string)` | <pre>[<br>  "10.1.3.0/24"<br>]</pre> | no |
| <a name="input_azurerm_subnet_name"></a> [azurerm\_subnet\_name](#input\_azurerm\_subnet\_name) | n/a | `string` | `"subnet"` | no |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | n/a | `string` | `"tsftate"` | no |
| <a name="input_keyvault_enabled_for_disk_encryption"></a> [keyvault\_enabled\_for\_disk\_encryption](#input\_keyvault\_enabled\_for\_disk\_encryption) | n/a | `bool` | `true` | no |
| <a name="input_keyvault_name"></a> [keyvault\_name](#input\_keyvault\_name) | n/a | `string` | `"aks-keyvault"` | no |
| <a name="input_keyvault_purge_protection_enabled"></a> [keyvault\_purge\_protection\_enabled](#input\_keyvault\_purge\_protection\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_keyvault_sku_name"></a> [keyvault\_sku\_name](#input\_keyvault\_sku\_name) | n/a | `string` | `"standard"` | no |
| <a name="input_keyvault_soft_delete_retention_days"></a> [keyvault\_soft\_delete\_retention\_days](#input\_keyvault\_soft\_delete\_retention\_days) | n/a | `number` | `7` | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"West Europe"` | no |
| <a name="input_mysql_backup_retention_days"></a> [mysql\_backup\_retention\_days](#input\_mysql\_backup\_retention\_days) | n/a | `number` | `7` | no |
| <a name="input_mysql_firewall_rules"></a> [mysql\_firewall\_rules](#input\_mysql\_firewall\_rules) | n/a | <pre>map(object({<br>    name             = string<br>    start_ip_address = string<br>    end_ip_address   = string<br>  }))</pre> | n/a | yes |
| <a name="input_mysql_infrastructure_encryption_enabled"></a> [mysql\_infrastructure\_encryption\_enabled](#input\_mysql\_infrastructure\_encryption\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_mysql_password"></a> [mysql\_password](#input\_mysql\_password) | n/a | `string` | `"6k2&/M_=yf8<j7<"` | no |
| <a name="input_mysql_public_network_access_enabled"></a> [mysql\_public\_network\_access\_enabled](#input\_mysql\_public\_network\_access\_enabled) | n/a | `bool` | `true` | no |
| <a name="input_mysql_server_name"></a> [mysql\_server\_name](#input\_mysql\_server\_name) | n/a | `string` | `"website2307121336"` | no |
| <a name="input_mysql_sku_name"></a> [mysql\_sku\_name](#input\_mysql\_sku\_name) | n/a | `string` | `"GP_Gen5_2"` | no |
| <a name="input_mysql_ssl_enforcement_enabled"></a> [mysql\_ssl\_enforcement\_enabled](#input\_mysql\_ssl\_enforcement\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_mysql_ssl_minimal_tls_version_enforced"></a> [mysql\_ssl\_minimal\_tls\_version\_enforced](#input\_mysql\_ssl\_minimal\_tls\_version\_enforced) | n/a | `string` | `"TLSEnforcementDisabled"` | no |
| <a name="input_mysql_storage_mb"></a> [mysql\_storage\_mb](#input\_mysql\_storage\_mb) | n/a | `number` | `171008` | no |
| <a name="input_mysql_username"></a> [mysql\_username](#input\_mysql\_username) | n/a | `string` | `"scafe_user"` | no |
| <a name="input_mysql_version"></a> [mysql\_version](#input\_mysql\_version) | n/a | `string` | `"8.0"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | n/a | `string` | `"aks_modules"` | no |
| <a name="input_resource_group_id"></a> [resource\_group\_id](#input\_resource\_group\_id) | n/a | `string` | `"/subscriptions/367f72ee-5c6f-4c07-b85d-6652ebde98ba/resourceGroups/training"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | n/a | `string` | `"training"` | no |
| <a name="input_storage_account_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | n/a | `string` | `"scafetrainingsta"` | no |
| <a name="input_storage_account_name_for_persistence"></a> [storage\_account\_name\_for\_persistence](#input\_storage\_account\_name\_for\_persistence) | n/a | `string` | `"gsa2307121336"` | no |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | n/a | `string` | `"367f72ee-5c6f-4c07-b85d-6652ebde98ba"` | no |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | n/a | `string` | `"227c59f6-f5df-49d3-9dd6-b55e2db1e690"` | no |
| <a name="input_vnet_address_space"></a> [vnet\_address\_space](#input\_vnet\_address\_space) | n/a | `list(string)` | <pre>[<br>  "10.1.0.0/16"<br>]</pre> | no |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | n/a | `string` | `"main-vnet"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->