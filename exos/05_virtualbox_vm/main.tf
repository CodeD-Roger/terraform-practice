terraform {
  required_providers {
    virtualbox = {
      source  = "github.com/terra-farm/virtualbox"
      version = "0.2.2"
    }
  }
}

provider "virtualbox" {}

resource "virtualbox_vm" "ubuntu_vm" {
  name   = "terraform_ubuntu"
  image  = "https://app.vagrantup.com/ubuntu/boxes/jammy64/versions/20230413.0.0/providers/virtualbox.box"
  cpus   = 1
  memory = 1024
}
