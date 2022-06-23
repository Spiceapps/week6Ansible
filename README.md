<!-- BEGIN_TF_DOCS -->


[36mrequirement.azurerm[0m (=3.0.0)


[36mprovider.azurerm[0m (=3.0.0)


[36mmodule.vmmodule[0m (./VM_module)


[36mresource.azurerm_availability_set.avset (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/availability_set)
[36mresource.azurerm_lb.week5LB (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/lb)
[36mresource.azurerm_lb_backend_address_pool.lb_backendPool (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/lb_backend_address_pool)
[36mresource.azurerm_lb_nat_rule.sshAccessRule (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/lb_nat_rule)
[36mresource.azurerm_lb_probe.sshProbe (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/lb_probe)
[36mresource.azurerm_lb_rule.webappAccessRule (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/lb_rule)
[36mresource.azurerm_network_interface.NIC (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/network_interface)
[36mresource.azurerm_network_interface_backend_address_pool_association.example (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/network_interface_backend_address_pool_association)
[36mresource.azurerm_network_interface_nat_rule_association.sshtofirstvm (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/network_interface_nat_rule_association)
[36mresource.azurerm_network_interface_security_group_association.public_assoc (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/network_interface_security_group_association)
[36mresource.azurerm_network_security_group.Private_nsg (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/network_security_group)
[36mresource.azurerm_network_security_group.Public_nsg (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/network_security_group)
[36mresource.azurerm_postgresql_flexible_server.myweek6psqlflexibleserver (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/postgresql_flexible_server)
[36mresource.azurerm_postgresql_flexible_server_configuration.flexible_server_configuration (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/postgresql_flexible_server_configuration)
[36mresource.azurerm_postgresql_flexible_server_database.db (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/postgresql_flexible_server_database)
[36mresource.azurerm_postgresql_flexible_server_firewall_rule.dbfirewall (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/postgresql_flexible_server_firewall_rule)
[36mresource.azurerm_private_dns_zone.mydbdns (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/private_dns_zone)
[36mresource.azurerm_private_dns_zone_virtual_network_link.mydnslink (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/private_dns_zone_virtual_network_link)
[36mresource.azurerm_public_ip.loadbalancerIP (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/public_ip)
[36mresource.azurerm_resource_group.rg (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/resource_group)
[36mresource.azurerm_subnet.DB-net (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/subnet)
[36mresource.azurerm_subnet.PublicSubnet (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/subnet)
[36mresource.azurerm_subnet_network_security_group_association.toPrivateSubnet (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/subnet_network_security_group_association)
[36mresource.azurerm_subnet_network_security_group_association.toPublicSubnet (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/subnet_network_security_group_association)
[36mresource.azurerm_virtual_network.week6network (resource)[0m (https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/virtual_network)


[36minput.AllowedIPforRemoteSSH[0m ("84.228.18.103")
[90mn/a[0m

[36minput.RGlocation[0m ("eastus")
[90mLocation of the resource group.[0m

[36minput.RGname[0m ("RG_VM_with_postgresSQL")
[90mRG_VM_with_postgresSQL[0m

[36minput.UbuntuVersion[0m ("20_04-lts-gen2")
[90mChoosen ubuntu version for the VM variable[0m

[36minput.VMSize[0m ("Standard_B1s")
[90mChoosen size for the VM variable[0m

[36minput.resource_group_name_prefix[0m ("prod")
[90mPrefix of the resource group name to differentiate environments.[0m

[36minput.vmadminpass[0m ("tempP4ssw0rd!")
[90mChoose userbame for Virtual Machines[0m

[36minput.vmcount[0m (3)
[90mn/a[0m

[36minput.vmusername[0m ("azureadmin")
[90mChoose userbame for Virtual Machines[0m


[36moutput.azurerm_postgresql_flexible_server_fqdn[0m
[90mn/a[0m

[36moutput.db_admin_password[0m
[90mn/a[0m

[36moutput.public_ip_address[0m
[90mn/a[0m

[36moutput.resource_group_id[0m
[90mn/a[0m

[36moutput.resource_group_name[0m
[90mn/a[0m

[36moutput.vm_admin_password[0m
[90mn/a[0m
<!-- END_TF_DOCS -->