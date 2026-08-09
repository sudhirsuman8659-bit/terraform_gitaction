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