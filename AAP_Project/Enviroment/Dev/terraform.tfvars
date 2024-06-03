rgs = {
    rg1 ={
        name = "aap_dev_rg"
        location = "west europe"
    }
}

vnet = {
    vnet1= {
   name                = "dev-vnet"
  location            = "west europe"
  resource_group_name = "aap_dev_rg"
  address_space       = ["10.0.0.0/16"]     
    }
}

subnet = {
    subnet1={
  name                 = "dev-frontendsubnet"
  resource_group_name  = "aap_dev_rg"
  virtual_network_name = "dev-vnet"
  address_prefixes     = ["10.0.1.0/24"]
    }
}