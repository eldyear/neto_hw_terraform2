variable "vm_db_name" {
  type    = string
  default = "netology-develop-platform-db"
}

# variable "vm_db_cores" {
#   type    = number
#   default = 2
# }

# variable "vm_db_memory" {
#   type    = number
#   default = 2
# }

# variable "vm_db_core_fraction" {
#   type    = number
#   default = 20
# }

variable "vm_db_zone" {
  type    = string
  default = "ru-central1-d"
}


variable "vms_resources" {
  type = map(object({
      cores         = number
      memory        = number
      core_fraction = number
      hdd_size      = number
      hdd_type      = string
  }))
  default = {
    web = {
      cores         = 2
      memory        = 1
      core_fraction = 20
      hdd_size      = 10
      hdd_type      = "network-hdd"
    },
    db = {
      cores         = 2
      memory        = 2
      core_fraction = 20
      hdd_size      = 10
      hdd_type      = "network-ssd"
    }
  }
}

variable "metadata_common" {
  type = map(any)
  default = {
    serial-port-enable = 1
  }
}