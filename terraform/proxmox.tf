terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "2.9.11"
    }
  }
}

provider "proxmox" {

  # Configuration options
    pm_api_url = var.proxmox_api_url
    pm_api_token_id = var.proxmox_api_token
    pm_api_token_secret = var.proxmox_api_token_secret
}

