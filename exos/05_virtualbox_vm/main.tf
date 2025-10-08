terraform {
  required_providers {
    virtualbox = {
      source = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}


provider "virtualbox" {}

resource "virtualbox_vm" "node" {
  name      = "tp"
  image     = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20180903.0.0/providers/virtualbox.box"
  cpus      = 1
  memory    = "512 mib"
  
  network_adapter {
    type           = "hostonly"
    host_interface = "vboxnet1"
  }

}
