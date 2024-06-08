resource "proxmox_lxc" "basic" {
  target_node  = "${var.target_node}"
  hostname     = "${var.hostname}"
  ostemplate   = "${var.ostemplate}"
  unprivileged = true
  onboot       = true
  start        = true
  memory       = "${var.memory}"
  cores        = "${var.cores}"  

  ssh_public_keys = "${var.ssh_public_keys}"

  features {
    nesting = true
  }

  rootfs {
    storage = "${var.storage}"
    size    = "${var.disk_size}"
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "${var.ip_address}"
    gw     = "${var.gateway}"
  }
}