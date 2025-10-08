terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# Télécharge l'image Nginx officielle
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# Lance un conteneur basé sur cette image
resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "nginx_example"
  ports {
    internal = 80
    external = var.external_port
  }
}
