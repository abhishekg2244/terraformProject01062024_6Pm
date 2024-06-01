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