terraform {
  required_version = ">= 1.1.0"

  required_providers {
    nso = {
      source  = "CiscoDevNet/nso"
      version = ">= 0.2.0"
    }
  }
}

locals {
  services = yamldecode(file("data/services.yaml"))
}

provider "nso" {
  username = "admin"
  password = "admin"
  url      = "http://localhost:8080"
}

module "l3vpn" {
  source = "./modules/terraform-nso-mpls-vpn"

  for_each = { for s in local.services.services.vpn.l3vpn : s.name => s }

  name                = each.value.name
  route_distinguisher = each.value.route_distinguisher
  endpoints           = each.value.endpoints
}
