# GCP-Terraform-nginx-ingress

#### Usage Main
```terraform
resource "google_compute_address" "ingress_ip_address" {
  name = "nginx-controller"
}

module "nginx-controller" {
  source = "./modules/terraform-helm-nginx-controller"

  ip_address = google_compute_address.ingress_ip_address.address
}

#### Extra vars for cert creation
```terraform
cluster_issuer_email                   = "my@mail.com"
cluster_issuer_name                    = "me"
cluster_issuer_private_key_secret_name = "my-secrets-name"

#### Add To variables
```terraform
variable "cluster_issuer_email" {
  type          = string
}

variable "cluster_issuer_name" {
  type          = string
}

variable "cluster_issuer_private_key_secret_name" {
  type          = string
}