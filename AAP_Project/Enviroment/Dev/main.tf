variable "rgs" {}
variable "vnet" {}


module "rgmodule" {
  source = "../../Modules/azurerm_rg"
  rgs = var.rgs
}

module "vnet" {
  depends_on = [ module.rgmodule ]
  source = "../../Modules/azurerm_vnet"
  vnet =var.vnet
  
}