terraform {
  required_version = ">= 1.0"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = ">= 3.0"
    }
  }
}

# Recurso local de ejemplo: no crea nada en ningun proveedor de nube
# y no genera ningun costo.
resource "null_resource" "example" {
  triggers = {
    message = "Hola desde Terraform"
  }

  provisioner "local-exec" {
    command = "echo Hola desde Terraform"
  }
}

output "message" {
  description = "Mensaje de ejemplo del recurso local."
  value       = "Hola desde Terraform"
}

output "example_id" {
  description = "ID del recurso null de ejemplo."
  value       = null_resource.example.id
}
