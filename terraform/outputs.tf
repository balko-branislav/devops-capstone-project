output "container_name" {
  description = "Nazov vytvoreneho kontajnera"
  value       = docker_container.app_container.name
}

output "application_url" {
  description = "URL adresa pre pristup k aplikacii"
  value       = "http://localhost:${var.app_port}"
}
