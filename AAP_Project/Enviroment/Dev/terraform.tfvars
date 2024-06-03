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

linuxvm = {
    vm1 ={
      nic-name = "dev-frontendvm1-nic"  
      location = "west europe"
      resource_group_name = "aap_dev_rg"
      vm-name = "dev-frontendvm1"
      datasubnet = "dev-frontendsubnet"
      virtual_network_name = "dev-vnet"
      size                = "Standard_F2"

      os_disk ={
        disk1={
           caching              = "ReadWrite"
           storage_account_type = "Standard_LRS" 
        }
      }
      imagerefrence ={
        image1 ={
            publisher = "Canonical"
           offer     = "0001-com-ubuntu-server-focal"
           sku       = "20_04-lts"
           version   = "latest"
          }
      }
    }
}