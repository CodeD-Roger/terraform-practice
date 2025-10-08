terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

variable "container_name" {
  description = "Nom du conteneur Nginx"
  type        = string
}

variable "external_port" {
  description = "Port externe d'accès à Nginx"
  type        = number
}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = var.container_name

  ports {
    internal = 80
    external = var.external_port
  }
}
