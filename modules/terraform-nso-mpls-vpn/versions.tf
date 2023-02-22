terraform {
  required_version = ">= 1.3.0"

  required_providers {
    nso = {
      source  = "netascode/nso"
      version = ">= 0.1.0"
    }
  }
}
