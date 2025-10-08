# Affiche le nom du conteneur après l'exécution
output "container_name" {
  description = "Nom du conteneur Docker créé"
  value       = docker_container.nginx.name
}

# Affiche l'URL locale d'accès à Nginx
output "nginx_url" {
  description = "URL locale pour accéder à Nginx"
  value       = "http://localhost:${var.external_port}"
}
