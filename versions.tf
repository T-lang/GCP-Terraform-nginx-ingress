terraform {

  required_version = ">= 0.14"
}


provider "helm"  {
      #source  = "hashicorp/helm"
      version = ">= 1.0.0"

    kubernetes {
     config_path = "./config"
   }
}

