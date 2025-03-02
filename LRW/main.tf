
/*

resource "proxmox_vm_qemu" "HESK" {
    # Node name has to be the same name as within the cluster
    # this might not include the FQDN
    target_node = "proxmox1"
    desc = "Hesk Helpdesk"
    onboot = true

    # The template name to clone this vm from
    clone = "rocky9cloud"

    # Activate QEMU agent for this VM
    agent = 1

    os_type = "cloud-init"
    cores = 2
    sockets = 1
    vcpus = 0
    cpu = "host"
    memory = 2048
    name = "HESK"
    vmid = 301

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
    ipconfig0 = "ip=192.168.1.21/24,gw=192.168.1.1"
    ciuser = "rich"
    cipassword = "not2bright"
    nameserver = "192.168.1.1"
    sshkeys = <<EOF
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAgpT9X/oGtbEBxfVwDwXA9x2T4WhstuaB/7KzHH+nc/ rich default
    EOF
}

resource "proxmox_vm_qemu" "KANBOARD" {
    # Node name has to be the same name as within the cluster
    # this might not include the FQDN
    target_node = "proxmox1"
    desc = "Kanboard"
    onboot = true

    # The template name to clone this vm from
    clone = "rocky9cloud"

    # Activate QEMU agent for this VM
    agent = 1

    os_type = "cloud-init"
    cores = 2
    sockets = 1
    vcpus = 0
    cpu = "host"
    memory = 2048
    name = "KANBOARD"
    vmid = 302

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
    ipconfig0 = "ip=192.168.1.23/24,gw=192.168.1.1"
    ciuser = "rich"
    cipassword = "not2bright"
    nameserver = "192.168.1.1"
    sshkeys = <<EOF
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAgpT9X/oGtbEBxfVwDwXA9x2T4WhstuaB/7KzHH+nc/ rich default
    EOF
}

*/

resource "proxmox_vm_qemu" "ICINGA" {
    # Node name has to be the same name as within the cluster
    # this might not include the FQDN
    target_node = "proxmox1"
    desc = "ICINGA"
    onboot = true

    # The template name to clone this vm from
    clone = "rocky9cloud"

    # Activate QEMU agent for this VM
    agent = 1

    os_type = "cloud-init"
    cores = 2
    sockets = 1
    vcpus = 0
    cpu = "host"
    memory = 2048
    name = "ICINGA"
    vmid = 303

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
    nameserver = "192.168.1.10"
    sshkeys = <<EOF
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAgpT9X/oGtbEBxfVwDwXA9x2T4WhstuaB/7KzHH+nc/ rich default
    EOF
}

/*

resource "proxmox_vm_qemu" "GRAFANA" {
    # Node name has to be the same name as within the cluster
    # this might not include the FQDN
    target_node = "proxmox1"
    desc = "GRAFANA"
    onboot = true

    # The template name to clone this vm from
    clone = "rocky9cloud"

    # Activate QEMU agent for this VM
    agent = 1

    os_type = "cloud-init"
    cores = 2
    sockets = 1
    vcpus = 0
    cpu = "host"
    memory = 2048
    name = "GRAFANA"
    vmid = 304

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
    target_node = "proxmox1"
    desc = "SYSLOG"
    onboot = true

    # The template name to clone this vm from
    clone = "rocky9cloud"

    # Activate QEMU agent for this VM
    agent = 1

    os_type = "cloud-init"
    cores = 2
    sockets = 1
    vcpus = 0
    cpu = "host"
    memory = 2048
    name = "SYSLOG"
    vmid = 305

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

*/