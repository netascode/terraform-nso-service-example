# Cisco NSO Service Example

This example demonstrates how the [NSO Terraform Provider](https://registry.terraform.io/providers/netascode/nso/latest/docs) can be used to maintain services. It is based on the `mpls-vpn` example which can be found in `examples.ncs/service-provider/mpls-vpn/` under the root installation directory.

The configuration is derived from a set of yaml files in the `data` [directory](https://github.com/netascode/terraform-nso-service-example/tree/main/data).

To point this to your own NSO instance, update the `main.tf` file accordingly.

```terraform
provider "nso" {
  username = "admin"
  password = "admin"
  url      = "http://localhost:8080"
}
```
