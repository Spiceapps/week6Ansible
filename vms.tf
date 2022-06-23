#Generate random password
#resource "random_password" "password" {
#  length = 16
#  special = true
#  override_special = "_%@"
#}

#create app vms using module 
module "vmmodule" {
  source = "./VM_module"
  count                = "${var.vmcount}"
  UbuntuVersion        = var.UbuntuVersion
  VMSize               = var.VMSize
  resource_group_location  = var.RGlocation
  machineName          = "acctvm${count.index}"
  networkInterfaceid   = element(azurerm_network_interface.NIC.*.id, count.index)
  avasetid             = azurerm_availability_set.avset.id
  rgname               = azurerm_resource_group.rg.name
  diskName             = "myosdisk${count.index}"
  #adminpassword        = random_password.password.result
  adminpassword         = var.vmadminpass
}

# Create multiple VMs for app deployment
#resource "azurerm_linux_virtual_machine" "myvms" {
#   count                 = "${var.vmcount}"
#   name                  = "acctvm${count.index}"
#   location              = azurerm_resource_group.rg.location
#   availability_set_id   = azurerm_availability_set.avset.id
#   resource_group_name   = azurerm_resource_group.rg.name
#   network_interface_ids = [element(azurerm_network_interface.week5NIC.*.id, count.index)]
#   size                  = "Standard_B1s"
#
#   delete_os_disk_on_termination = true
#
#source_image_reference {
#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-focal"
#     sku       = "20_04-lts-gen2"
#     version   = "latest"
#   }
#
#   os_disk {
#     name              = "myosdisk${count.index}"
#     caching           = "ReadWrite"
#     storage_account_type = "Premium_LRS"
#   }
#    admin_username = "azureadmin"
#    admin_password = random_password.password.result
#    disable_password_authentication = false
#}

# Create single VM for DB
#resource "azurerm_linux_virtual_machine" "myDB" {
#   name                  = "DBvm"
#   location              = azurerm_resource_group.rg.location
#   availability_set_id   = azurerm_availability_set.avset.id
#   resource_group_name   = azurerm_resource_group.rg.name
#   network_interface_ids  = [azurerm_network_interface.week5DBNIC.id]
#   size                  = "Standard_B1s"
#
#   delete_os_disk_on_termination = true
#
#source_image_reference {
#     publisher = "Canonical"
#     offer     = "0001-com-ubuntu-server-focal"
#     sku       = "20_04-lts-gen2"
#     version   = "latest"
#   }
#
#   os_disk {
#     name              = "myosdisk"
#     caching           = "ReadWrite"
#     storage_account_type = "Premium_LRS"
#   }
#    admin_username = "azureadmin"
#    admin_password = random_password.password.result
#    disable_password_authentication = false
#}