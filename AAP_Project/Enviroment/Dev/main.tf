variable "rgs" {}
variable "vnet" {}
variable "subnet" {}
variable "linuxvm" {}

module "rgmodule" {
  source = "../../Modules/azurerm_rg"
  rgs = var.rgs
}

module "vnet" {
  depends_on = [ module.rgmodule ]
  source = "../../Modules/azurerm_vnet"
  vnet =var.vnet
  
}

module "subnet" {
  depends_on = [ module.rgmodule,module.vnet ]
  source = "../../Modules/azurerm_subnet"
  subnet = var.subnet
  
}


module "linuxvm" {
  depends_on = [ module.rgmodule,module.vnet,module.subnet ]
  source = "../../Modules/azurerm_linux_vm"
  linuxvm = var.linuxvm

}