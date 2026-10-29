terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.0"
    }
  }
}

provider "docker" {}

# Stiahnutie obrazu z Docker Hubu (alebo lokálneho)
resource "docker_image" "capstone_app" {
  name         = "nginx:${var.docker_image_tag}"
  keep_locally = false
}

# Vytvorenie kontajnera s dynamickými premennými
resource "docker_container" "app_container" {
  image = docker_image.capstone_app.image_id
  name  = "capstone-app-${var.environment}"

  env = [
    "APP_ENV=${var.environment}"
  ]

  ports {
    internal = 80
    external = var.app_port
  }
}
