terraform {
  required_version = ">= 1.1.0"

  required_providers {
    nso = {
      source  = "netascode/nso"
      version = ">= 0.1.0"
    }
  }

  experiments = [module_variable_optional_attrs]
}
