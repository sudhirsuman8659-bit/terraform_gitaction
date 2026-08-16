resource_group = {
  rgs_1 = {
    resource_group_name = "rg-123"
    location            = "centralindia"
  }
  rgs_2 = {
    resource_group_name = "rg-12345"
    location            = "centralindia"
  }
  rgs_3 = {
    resource_group_name = "rg-sonu"
    location            = "centralindia"
  }
  rgs_4 = {
    resource_group_name = "rg-plan" 
    location            = "centralindia"
  }

}



virtual_network = {
  vnet_1 = {
    virtual_network     = "Vnet-123"
    resource_group_name = "rg-123"
    location            = "centralindia"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet = {
  subnet_1 = {
    subnet              = "frontend_subnet"
    resource_group_name = "rg-123"
    virtual_network     = "vnet-123"
    address_prefixes    = ["10.0.1.0/24"]
  }

  subnet_2 = {
    subnet              = "backend_subnet"
    resource_group_name = "rg-123"
    virtual_network     = "vnet-123"
    address_prefixes    = ["10.0.2.0/24"]
  }
}

public_ip = {
  pip_1 = {
    public_ip           = "frontend_pip"
    resource_group_name = "rg-123"
    location            = "centralindia"
    allocation_method   = "Static"
  }

  pip_2 = {
    public_ip           = "backend_pip"
    resource_group_name = "rg-123"
    location            = "centralindia"
    allocation_method   = "Static"
  }
}

virtual_machine = {
  nic_1 = {

    network_interface     = "frontend_nic"
    location              = "centralindia"
    resource_group_name   = "rg-123"
    linux_virtual_machine = "frontend-vm-01"
    size                  = "Standard_D2s_v3"
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
    linux_virtual_machine = "backend-vm-01"
    size                  = "Standard_D2s_v3"
    subnet_name           = "backend_subnet"
    virtual_network_name  = "vnet-123"
    pip_name              = "backend_pip"
    admin_username        = "azurerm"
    admin_password        = "Vodafone@12345"
  }
}