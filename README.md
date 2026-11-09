# terraform-cruzito

Proyecto de Terraform de Cruz (Elchino502vale514).

Este repositorio contiene la configuracion de Terraform que Cruz usa en su workspace de Terraform Cloud (HCP Terraform). Es un ejemplo local y gratuito: no crea recursos en ningun proveedor de nube, no usa credenciales y no genera ningun costo.

## Contenido

- `main.tf`: configuracion minima de Terraform con `required_version = ">= 1.0"`, un recurso local de ejemplo del proveedor `null` (`null_resource`) y salidas (`outputs`).
- `.gitignore`: ignora los archivos locales de Terraform, como `.terraform/` y los archivos de estado `*.tfstate`.
- `README.md`: este archivo.

## Uso

```bash
terraform init
terraform plan
terraform apply
```

Para destruir el recurso local de ejemplo:

```bash
terraform destroy
```
