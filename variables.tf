
variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "storage_accounts" {
  type = map(object({
    account_kind                    = optional(string, "StorageV2")
    account_tier                    = optional(string, "Standard")
    account_replication_type        = optional(string, "LRS")
    enable_blob_versioning          = optional(bool, false)
    enable_https_traffic_only       = optional(bool, true)
    is_hns_enabled                  = optional(bool, false)
    min_tls_version                 = optional(string, "TLS1_2")
    allow_nested_items_to_be_public = optional(bool, false)
    large_file_share_enabled        = optional(bool, false)
    tags                            = optional(map(string), {})
    identity = optional(object({
      type = string
    }))
  }))
}

variable "virtual_networks" {
  type = map(object({
    address_space = list(string)
    subnets = map(object({
      address_prefix = string
      nsg_id         = optional(string, null)
    }))
  }))
}

variable "network_security_groups" {
  type = map(object({
    security_rules = optional(list(object({
      name                       = string
      priority                   = number
      direction                  = string
      access                     = string
      protocol                   = string
      source_port_range          = string
      destination_port_range     = string
      source_address_prefix      = string
      destination_address_prefix = string
    })))
    tags = optional(map(string), {})
  }))
  
}

variable "linux_virtual_machines" {
  type = map(object({
    vm_size           = string
    admin_username    = string
    admin_password    = optional(string, null)
    admin_ssh_key     = optional(string, null)
    public_ip_enabled = optional(bool, true)
    subnet_id         = string
    custom_data       = optional(string, null)
    tags              = optional(map(string), {})
    identity = optional(object({
      type = string
    }))
  }))
}

variable "tags" {
  type        = map(string)
  description = "A map of tags"
}
