resource "proxmox_vm_qemu" "ICINGA" {
    # Node name has to be the same name as within the cluster
    # this might not include the FQDN
    target_node = "proxmox"
    desc = "ICINGA"
    onboot = true

    # The template name to clone this vm from
    clone = "ubuntucloud"

    # Activate QEMU agent for this VM
    agent = 1

    os_type = "cloud-init"
    cores = 2
    sockets = 2
    vcpus = 0
    cpu = "host"
    memory = 3072
    name = "ICINGA"
    vmid = 203

    # cloudinit = "local-lvm"
    scsihw   = "virtio-scsi-single" 
    bootdisk = "scsi0"

    disks {
        scsi {
            scsi0 {
                disk {
                  storage = "local-lvm"
                  size = 32
                }
            }
        }
        ide {
            ide2 {
                cloudinit {
                    storage = "local-lvm"
                }
            }
        }
    }


    # Setup the ip address using cloud-init.
    # Keep in mind to use the CIDR notation for the ip.
    ipconfig0 = "ip=192.168.1.22/24,gw=192.168.1.1"
    ciuser = "rich"
    cipassword = "not2bright"
    nameserver = "192.168.1.1"
    sshkeys = <<EOF
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAgpT9X/oGtbEBxfVwDwXA9x2T4WhstuaB/7KzHH+nc/ rich default
    EOF
}

resource "proxmox_vm_qemu" "GRAFANA" {
    # Node name has to be the same name as within the cluster
    # this might not include the FQDN
    target_node = "proxmox"
    desc = "GRAFANA"
    onboot = true

    # The template name to clone this vm from
    clone = "ubuntucloud"

    # Activate QEMU agent for this VM
    agent = 1

    os_type = "cloud-init"
    cores = 4
    sockets = 1
    vcpus = 0
    cpu = "host"
    memory = 3072
    name = "GRAFANA"
    vmid = 204

    # cloudinit = "local-lvm"
    scsihw   = "virtio-scsi-single" 
    bootdisk = "scsi0"

    disks {
        scsi {
            scsi0 {
                disk {
                  storage = "local-lvm"
                  size = 32
                }
            }
        }
        ide {
            ide2 {
                cloudinit {
                    storage = "local-lvm"
                }
            }
        }
    }


    # Setup the ip address using cloud-init.
    # Keep in mind to use the CIDR notation for the ip.
    ipconfig0 = "ip=192.168.1.25/24,gw=192.168.1.1"
    ciuser = "rich"
    cipassword = "not2bright"
    nameserver = "192.168.1.1"
    sshkeys = <<EOF
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAgpT9X/oGtbEBxfVwDwXA9x2T4WhstuaB/7KzHH+nc/ rich default
    EOF
}

resource "proxmox_vm_qemu" "SYSLOG" {
    # Node name has to be the same name as within the cluster
    # this might not include the FQDN
    target_node = "proxmox"
    desc = "SYSLOG"
    onboot = true

    # The template name to clone this vm from
    clone = "ubuntucloud"

    # Activate QEMU agent for this VM
    agent = 1

    os_type = "cloud-init"
    cores = 4
    sockets = 1
    vcpus = 0
    cpu = "host"
    memory = 3072
    name = "SYSLOG"
    vmid = 205

    # cloudinit = "local-lvm"
    scsihw   = "virtio-scsi-single" 
    bootdisk = "scsi0"

    disks {
        scsi {
            scsi0 {
                disk {
                  storage = "local-lvm"
                  size = 32
                }
            }
        }
        ide {
            ide2 {
                cloudinit {
                    storage = "local-lvm"
                }
            }
        }
    }


    # Setup the ip address using cloud-init.
    # Keep in mind to use the CIDR notation for the ip.
    ipconfig0 = "ip=192.168.1.26/24,gw=192.168.1.1"
    ciuser = "rich"
    cipassword = "not2bright"
    nameserver = "192.168.1.1"
    sshkeys = <<EOF
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAgpT9X/oGtbEBxfVwDwXA9x2T4WhstuaB/7KzHH+nc/ rich default
    EOF
}

resource "proxmox_vm_qemu" "DOCKER" {
    # Node name has to be the same name as within the cluster
    # this might not include the FQDN
    target_node = "proxmox"
    desc = "DOCKER"
    onboot = true

    # The template name to clone this vm from
    clone = "ubuntucloud"

    # Activate QEMU agent for this VM
    agent = 1

    os_type = "cloud-init"
    cores = 4
    sockets = 2
    vcpus = 0
    cpu = "host"
    memory = 3072
    name = "DOCKER"
    vmid = 206

    # cloudinit = "local-lvm"
    scsihw   = "virtio-scsi-single" 
    bootdisk = "scsi0"

    disks {
        scsi {
            scsi0 {
                disk {
                  storage = "local-lvm"
                  size = 32
                }
            }
        }
        ide {
            ide2 {
                cloudinit {
                    storage = "local-lvm"
                }
            }
        }
    }


    # Setup the ip address using cloud-init.
    # Keep in mind to use the CIDR notation for the ip.
    ipconfig0 = "ip=192.168.1.29/24,gw=192.168.1.1"
    ciuser = "rich"
    cipassword = "not2bright"
    nameserver = "192.168.1.1"
    sshkeys = <<EOF
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAgpT9X/oGtbEBxfVwDwXA9x2T4WhstuaB/7KzHH+nc/ rich default
    EOF
}
