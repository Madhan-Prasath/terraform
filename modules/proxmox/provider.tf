# Proxmox Provider
# ---
# Initial Provider Configuration for Proxmox

terraform {
    required_version = ">= 0.13.0"
    required_providers {
        proxmox = {
            source = "telmate/proxmox"
            version = "2.9.14"
        }
    }
}

provider "proxmox" {
    pm_tls_insecure = true
    pm_api_url = "${var.proxmox_api_url}"
    pm_user = "${var.pm_user}"
    pm_password = "${var.pm_password}"

    pm_log_enable = true
    pm_log_file   = "terraform-plugin-proxmox.log"
    pm_debug      = true
    pm_log_levels = {
      _default    = "debug"
      _capturelog = ""
    }
}