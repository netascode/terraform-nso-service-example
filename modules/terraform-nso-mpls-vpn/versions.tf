terraform {
  required_version = ">= 1.3.0"

  required_providers {
    nso = {
      source  = "CiscoDevNet/nso"
      version = ">= 0.2.0"
    }
  }
}
