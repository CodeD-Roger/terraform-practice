output "container_name" {
  value = docker_container.nginx.name
}

output "nginx_url" {
  value = "http://localhost:${var.external_port}"
}
