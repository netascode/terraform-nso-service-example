variable "name" {
  description = "Unique service id."
  type        = string
}

variable "route_distinguisher" {
  description = "Route distinguisher/target identifier unique for the VPN."
  type        = number
}

variable "endpoints" {
  description = "List of VPN endpoints."
  type = list(object({
    id           = string
    ce_device    = string
    ce_interface = string
    ip_network   = string
    bandwidth    = number
    as_number    = optional(number)
  }))
  default  = []
  nullable = false
}
