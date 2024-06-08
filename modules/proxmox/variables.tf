# For Providers
variable "proxmox_api_url" {
    type = string
    description = "The URL of the Proxmox API"
}

variable "proxmox_api_token_id" {
    type = string
    sensitive = true
    description = "The ID of the Proxmox API token"
}

variable "proxmox_api_token_secret" {
    type = string
    sensitive = true
    description = "The secret of the Proxmox API token"
}

variable "pm_user"{
    type = string
    description = "The username of the Proxmox user"
}

variable "pm_password"{
    type = string
    description = "The password of the Proxmox user"
}

# For LXC
variable "target_node"{
    type = string
    description = "The node where the LXC container will be created"
}

variable "hostname"{
    type = string
    description = "The hostname of the LXC container"
}

variable "ostemplate"{
    type = string
    description = "The OS template of the LXC container"
}

variable "memory"{
    type = number
    description = "The memory of the LXC container"
}

variable "cores"{
    type = number
    description = "The cores of the LXC container"
}

variable "ssh_public_keys"{
    type = string
    description = "The SSH public keys of the LXC container"
}

variable "storage"{
    type = string
    description = "The storage of the LXC container"
}

variable "disk_size"{
    type = string
    description = "The disk size of the LXC container"
}

variable "ip_address"{
    type = string
    description = "The IP address of the LXC container"
}

variable "gateway"{
    type = string
    description = "The gateway of the LXC container"
}