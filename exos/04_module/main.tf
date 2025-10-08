terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

# Appel du module pour le premier conteneur
module "nginx1" {
  source         = "./modules/nginx"
  container_name = "nginx1"
  external_port  = 8081
}

# Appel du module pour le deuxième conteneur
module "nginx2" {
  source         = "./modules/nginx"
  container_name = "nginx2"
  external_port  = 8082
}
