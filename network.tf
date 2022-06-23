# Create virtual network
resource "azurerm_virtual_network" "week6network" {
  name                = "myVnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

# Create public subnet
resource "azurerm_subnet" "PublicSubnet" {
  name                 = "myPublicSubnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.week6network.name
  address_prefixes     = ["10.0.1.0/24"]
}

# Create private subnet
#resource "azurerm_subnet" "week5PrivateSubnet" {
#  name                 = "myPrivateSubnet"
#  resource_group_name  = azurerm_resource_group.rg.name
#  virtual_network_name = azurerm_virtual_network.week5network.name
#  address_prefixes     = ["10.0.2.0/24"]
#}

# NICs for App VMs
resource "azurerm_network_interface" "NIC" {
   count               = "${var.vmcount}"
   name                = "acctni${count.index}"
   location            = azurerm_resource_group.rg.location
   resource_group_name = azurerm_resource_group.rg.name
  ip_configuration {
     name                          = "mainConfiguration"
     subnet_id                     = azurerm_subnet.PublicSubnet.id
     private_ip_address_allocation = "Dynamic"
   }
}

# NICs for DB VMs
#resource "azurerm_network_interface" "week5DBNIC" {
#   name                = "dbNIC"
#   location            = azurerm_resource_group.rg.location
#   resource_group_name = azurerm_resource_group.rg.name
#      ip_configuration {
#     name                          = "mainConfiguration"
#     subnet_id                     = azurerm_subnet.week5PrivateSubnet.id
#     private_ip_address_allocation = "Dynamic"
#   }
#}

# Create Network Security Group and rules
resource "azurerm_network_security_group" "Public_nsg" {
  name                = "myPublic_SecurityGroup"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  security_rule {
    name                       = "SSH"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_address_prefixes    = [var.AllowedIPforRemoteSSH]
    source_port_range          = "*"
    destination_port_range     = "22"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "webapp"
    priority                   = 1002
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "8080"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "Private_nsg" {
  name                = "myDB_SecurityGroup"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  security_rule {
    name                       = "SSH"
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "22"
    destination_port_range     = "22"
    source_address_prefix      = "10.0.1.0/24"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "postgre"
    priority                   = 1002
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "5432"
    destination_port_range     = "5432"
    source_address_prefix      = "10.0.1.0/24"
    destination_address_prefix = "*"
  }
}

# Connect the public security group to the appVMs network interfaces
resource "azurerm_network_interface_security_group_association" "public_assoc" {
  count = "${var.vmcount}"
  network_interface_id      = azurerm_network_interface.NIC[count.index].id
  network_security_group_id = azurerm_network_security_group.Public_nsg.id
}

# Connect the private security group to the dbVM network interface
#resource "azurerm_network_interface_security_group_association" "private_assoc" {
#  network_interface_id      = azurerm_network_interface.week5DBNIC.id
#  network_security_group_id = azurerm_network_security_group.Private_nsg.id
#}

# Associate NSGs with Subnets
resource "azurerm_subnet_network_security_group_association" "toPublicSubnet" {
  subnet_id                 = azurerm_subnet.PublicSubnet.id
  network_security_group_id = azurerm_network_security_group.Public_nsg.id
}

resource "azurerm_subnet_network_security_group_association" "toPrivateSubnet" {
  subnet_id                 = azurerm_subnet.DB-net.id
  network_security_group_id = azurerm_network_security_group.Private_nsg.id
}