
# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

/*
# Configure the Microsoft Azure Provider
resource "azurerm_resource_group" "example" {
  name     = "VMSS"
  location = "East US"
}


resource "azurerm_virtual_network" "example" {
  name                = azurerm_resource_group.example.name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "example" {
  name                 = "Subnet"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_public_ip" "example" {
  name                = "test"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  allocation_method   = "Static"
  domain_name_label   = azurerm_resource_group.example.name

  tags = {
    environment = "staging"
  }
}
*/
