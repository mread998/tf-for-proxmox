resource "proxmox_vm_qemu" "readnet_ulility_box" {

  name        = "UtilityBox"
  vmid        = "555"
  desc        = "Localy instance for mgmt"
  target_node = "pve"
  os_type     = "cloud-init"
  full_clone  = true
  memory      = 1024
  sockets     = "1"
  cores       = "2"
  cpu         = "host"
  scsihw      = "virtio-scsi-pci"
  clone       = "Template-Ubuntu-2204"
  agent       = "1"
  disk {
      size = "32G"
      type = "virtio"
      storage = "local-lvm"
    #   storage_type = "rbd"
      iothread = 1
      ssd = 1
      discard = "on"
  }

  # Cloud-init section
  ipconfig0 = "ip=10.10.10.10/24,gw=10.11.11.1"
  ssh_user  = "dummy"
  sshkeys   = "ssh-rsa blhablahblan dummy@dumpster.com"
}
