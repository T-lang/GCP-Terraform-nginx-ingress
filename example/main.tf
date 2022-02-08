
resource "google_compute_address" "ingress_ip_address" {
  name = "nginx-controller"
}

module "nginx-controller" {
  source = "../"

  ip_address = google_compute_address.ingress_ip_address.address
}

##cert
module "cert_manager" {
  source        = "T-lang/GCP-Terraform-nginx-ingress"
  cluster_issuer_email                   = "my@site.com"
  cluster_issuer_name                    = "cert-manager-global"
  cluster_issuer_private_key_secret_name = "cert-manager-private-key"
}

