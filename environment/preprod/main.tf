module "resource_group" {
  source = "../../modules/azurerm_resource_group"

  resource_group = var.resource_group

}

module "virtual_network" {
  source = "../../modules/azurerm_virtual_network"

  virtual_network = var.virtual_network
  depends_on      = [module.resource_group]
}

module "subnet" {
  source = "../../modules/azurerm_subnet"

  subnet     = var.subnet
  depends_on = [module.virtual_network]

}

module "public_ip" {
  source = "../../modules/azurerm_public_ip"

  public_ip  = var.public_ip
  depends_on = [module.subnet]

}

module "virtual_machine" {
  source = "../../modules/azurrm_virtual_machine"

  linux_virtual_machine = var.virtual_machine
  depends_on            = [module.public_ip, module.subnet]
}