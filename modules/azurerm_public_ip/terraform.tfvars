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