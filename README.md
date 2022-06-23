<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | =3.0.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vmmodule"></a> [vmmodule](#module\_vmmodule) | ./VM_module | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_availability_set.avset](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/availability_set) | resource |
| [azurerm_lb.week5LB](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/lb) | resource |
| [azurerm_lb_backend_address_pool.lb_backendPool](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/lb_backend_address_pool) | resource |
| [azurerm_lb_nat_rule.sshAccessRule](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/lb_nat_rule) | resource |
| [azurerm_lb_probe.sshProbe](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/lb_probe) | resource |
| [azurerm_lb_rule.webappAccessRule](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/lb_rule) | resource |
| [azurerm_network_interface.NIC](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/network_interface) | resource |
| [azurerm_network_interface_backend_address_pool_association.example](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/network_interface_backend_address_pool_association) | resource |
| [azurerm_network_interface_nat_rule_association.sshtofirstvm](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/network_interface_nat_rule_association) | resource |
| [azurerm_network_interface_security_group_association.public_assoc](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/network_interface_security_group_association) | resource |
| [azurerm_network_security_group.Private_nsg](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/network_security_group) | resource |
| [azurerm_network_security_group.Public_nsg](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/network_security_group) | resource |
| [azurerm_postgresql_flexible_server.myweek6psqlflexibleserver](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/postgresql_flexible_server) | resource |
| [azurerm_postgresql_flexible_server_configuration.flexible_server_configuration](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/postgresql_flexible_server_configuration) | resource |
| [azurerm_postgresql_flexible_server_database.db](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/postgresql_flexible_server_database) | resource |
| [azurerm_postgresql_flexible_server_firewall_rule.dbfirewall](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/postgresql_flexible_server_firewall_rule) | resource |
| [azurerm_private_dns_zone.mydbdns](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone_virtual_network_link.mydnslink](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_public_ip.loadbalancerIP](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/public_ip) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/resource_group) | resource |
| [azurerm_subnet.DB-net](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/subnet) | resource |
| [azurerm_subnet.PublicSubnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/subnet) | resource |
| [azurerm_subnet_network_security_group_association.toPrivateSubnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/subnet_network_security_group_association) | resource |
| [azurerm_subnet_network_security_group_association.toPublicSubnet](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/subnet_network_security_group_association) | resource |
| [azurerm_virtual_network.week6network](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/virtual_network) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_AllowedIPforRemoteSSH"></a> [AllowedIPforRemoteSSH](#input\_AllowedIPforRemoteSSH) | n/a | `string` | `"84.228.18.103"` | no |
| <a name="input_RGlocation"></a> [RGlocation](#input\_RGlocation) | Location of the resource group. | `string` | `"eastus"` | no |
| <a name="input_RGname"></a> [RGname](#input\_RGname) | RG\_VM\_with\_postgresSQL | `string` | `"RG_VM_with_postgresSQL"` | no |
| <a name="input_UbuntuVersion"></a> [UbuntuVersion](#input\_UbuntuVersion) | Choosen ubuntu version for the VM variable | `string` | `"20_04-lts-gen2"` | no |
| <a name="input_VMSize"></a> [VMSize](#input\_VMSize) | Choosen size for the VM variable | `string` | `"Standard_B1s"` | no |
| <a name="input_resource_group_name_prefix"></a> [resource\_group\_name\_prefix](#input\_resource\_group\_name\_prefix) | Prefix of the resource group name to differentiate environments. | `string` | `"prod"` | no |
| <a name="input_vmadminpass"></a> [vmadminpass](#input\_vmadminpass) | Choose userbame for Virtual Machines | `string` | `"tempP4ssw0rd!"` | no |
| <a name="input_vmcount"></a> [vmcount](#input\_vmcount) | n/a | `number` | `3` | no |
| <a name="input_vmusername"></a> [vmusername](#input\_vmusername) | Choose userbame for Virtual Machines | `string` | `"azureadmin"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azurerm_postgresql_flexible_server_fqdn"></a> [azurerm\_postgresql\_flexible\_server\_fqdn](#output\_azurerm\_postgresql\_flexible\_server\_fqdn) | n/a |
| <a name="output_db_admin_password"></a> [db\_admin\_password](#output\_db\_admin\_password) | n/a |
| <a name="output_public_ip_address"></a> [public\_ip\_address](#output\_public\_ip\_address) | n/a |
| <a name="output_resource_group_id"></a> [resource\_group\_id](#output\_resource\_group\_id) | n/a |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | n/a |
| <a name="output_vm_admin_password"></a> [vm\_admin\_password](#output\_vm\_admin\_password) | n/a |
<!-- END_TF_DOCS -->