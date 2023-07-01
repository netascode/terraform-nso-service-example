resource "nso_restconf" "service_mpls_vpn" {
  path = "l3vpn:vpn/l3vpn=${var.name}"
  attributes = {
    name                = var.name
    route-distinguisher = var.route_distinguisher
  }
  lists = [
    {
      name = "endpoint"
      key  = "id"
      items = [for e in var.endpoints :
        {
          id           = e.id
          ce-device    = e.ce_device
          ce-interface = e.ce_interface
          ip-network   = e.ip_network
          bandwidth    = e.bandwidth
          as-number    = e.as_number
        }
      ]
    }
  ]
}
