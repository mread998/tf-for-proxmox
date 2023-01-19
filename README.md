# tf-for-proxmox
# terraform enviroment with proxmox

This repos is to provision infrustructue in a proxmox cluster in my home lab.  The ultimeate goal is to automate everything.   This is the first step.

## Authentication

Authntication will be handled one of two way; though shell variables or though a secret_variables file.

An example shell script is included.  Just update and delete what you don't need.

### Shell Variables

With api token

`export PM_API_TOKEN_ID="proxmox-user!proxmox-token-name"`

`export PM_API_TOKEN_SECRET="proxmox-generated-secret-goes-here"`

with username and password

`export PM_USER="proxmox-user@proxmox-host"
export PM_PASS="user-secret-password"`
[...]

Errors

Errors about not clone not 
