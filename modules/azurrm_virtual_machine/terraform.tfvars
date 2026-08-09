linux_virtual_machine = {
  nic_1 = {

    network_interface     = "frontend_nic"
    location              = "centralindia"
    resource_group_name   = "rg-123"
    linux_virtual_machine = "frontend_virtual_machine"
    size                  = "Standard_D4_v5"
    subnet_name           = "frontend_subnet"
    virtual_network_name  = "vnet-123"
    pip_name              = "frontend_pip"
    admin_username        = "azurerm"
    admin_password        = "Vodafone@12345"
  }

  nic_2 = {

    network_interface     = "backend_nic"
    location              = "centralindia"
    resource_group_name   = "rg-123"
    linux_virtual_machine = "backend_virtual_machine"
    size                  = "Standard_D4_v5"
    subnet_name           = "backend_subnet"
    virtual_network_name  = "vnet-123"
    pip_name              = "backend_pip"
    admin_username        = "azurerm"
    admin_password        = "Vodafone@12345"
  }
}