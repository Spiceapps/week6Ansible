<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_linux_virtual_machine.myvms](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_UbuntuVersion"></a> [UbuntuVersion](#input\_UbuntuVersion) | Choosen ubuntu version for the VM variable | `string` | `"20_04-lts-gen2"` | no |
| <a name="input_VMSize"></a> [VMSize](#input\_VMSize) | Choosen size for the VM variable | `string` | `"Standard_DS1_v2"` | no |
| <a name="input_adminpassword"></a> [adminpassword](#input\_adminpassword) | n/a | `string` | n/a | yes |
| <a name="input_avasetid"></a> [avasetid](#input\_avasetid) | n/a | `string` | n/a | yes |
| <a name="input_deldisk"></a> [deldisk](#input\_deldisk) | n/a | `string` | `"true"` | no |
| <a name="input_diskName"></a> [diskName](#input\_diskName) | n/a | `string` | n/a | yes |
| <a name="input_machineName"></a> [machineName](#input\_machineName) | n/a | `string` | n/a | yes |
| <a name="input_networkInterfaceid"></a> [networkInterfaceid](#input\_networkInterfaceid) | n/a | `string` | n/a | yes |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Location of the resource group. | `string` | `"eastus"` | no |
| <a name="input_rgname"></a> [rgname](#input\_rgname) | n/a | `string` | n/a | yes |
| <a name="input_vmusername"></a> [vmusername](#input\_vmusername) | Choose username for Virtual Machines | `string` | `"azureadmin"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm_password"></a> [vm\_password](#output\_vm\_password) | n/a |
<!-- END_TF_DOCS -->