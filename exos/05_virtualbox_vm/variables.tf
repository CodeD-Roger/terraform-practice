variable "vm_name" {
  type        = string
  default     = "ubuntu_vm"
  description = "Nom de la machine virtuelle"
}

variable "vm_image" {
  type        = string
  description = "Chemin vers l'image disque VirtualBox (.vdi / .ova)"
  default     = "C:/Users/TegraceSalumu/Downloads/Cours/terraform_practice/vm/Ubuntu 22.04 (64bit).vdi"
}

variable "vm_memory" {
  type        = number
  default     = 2048
  description = "Mémoire RAM de la VM (en Mo)"
}
