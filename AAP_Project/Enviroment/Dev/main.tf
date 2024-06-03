variable "rgs" {}
variable "vnet" {}
variable "subnet" {}


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