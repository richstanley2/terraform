resource "proxmox_vm_qemu" "Ubuntu0" {
    # Node name has to be the same name as within the cluster
    # this might not include the FQDN
    target_node = "proxmox"
    desc = "UbuntuTest"
    onboot = true

    # The template name to clone this vm from
    clone = "ubuntu24cloud"

    # Activate QEMU agent for this VM
    agent = 1

    os_type = "cloud-init"
    cores = 2
    sockets = 1
    vcpus = 0
    cpu = "host"
    memory = 2048
    name = "Ubuntu0"
    vmid = 110

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
    ipconfig0 = "ip=192.168.1.210/24,gw=192.168.1.1"
    ciuser = "rich"
    cipassword = "not2bright"
    nameserver = "192.168.1.1"
    sshkeys = <<EOF
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAgpT9X/oGtbEBxfVwDwXA9x2T4WhstuaB/7KzHH+nc/ rich default
    EOF
}

resource "proxmox_vm_qemu" "Ubuntu1" {
    # Node name has to be the same name as within the cluster
    # this might not include the FQDN
    target_node = "proxmox"
    desc = "UbuntuTest"
    onboot = true

    # The template name to clone this vm from
    clone = "ubuntu24cloud"

    # Activate QEMU agent for this VM
    agent = 1

    os_type = "cloud-init"
    cores = 2
    sockets = 1
    vcpus = 0
    cpu = "host"
    memory = 2048
    name = "Ubuntu1"
    vmid = 111

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
    ipconfig0 = "ip=192.168.1.211/24,gw=192.168.1.1"
    ciuser = "rich"
    cipassword = "not2bright"
    nameserver = "192.168.1.1"
    sshkeys = <<EOF
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAgpT9X/oGtbEBxfVwDwXA9x2T4WhstuaB/7KzHH+nc/ rich default
    EOF
}

resource "proxmox_vm_qemu" "Ubuntu2" {
    # Node name has to be the same name as within the cluster
    # this might not include the FQDN
    target_node = "proxmox"
    desc = "UbuntuTest"
    onboot = true

    # The template name to clone this vm from
    clone = "ubuntu24cloud"

    # Activate QEMU agent for this VM
    agent = 1

    os_type = "cloud-init"
    cores = 2
    sockets = 1
    vcpus = 0
    cpu = "host"
    memory = 2048
    name = "Ubuntu2"
    vmid = 112

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
    ipconfig0 = "ip=192.168.1.212/24,gw=192.168.1.1"
    ciuser = "rich"
    cipassword = "not2bright"
    nameserver = "192.168.1.1"
    sshkeys = <<EOF
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAgpT9X/oGtbEBxfVwDwXA9x2T4WhstuaB/7KzHH+nc/ rich default
    EOF
}


resource "proxmox_vm_qemu" "Rocky0" {
    # Node name has to be the same name as within the cluster
    # this might not include the FQDN
    target_node = "proxmox"
    desc = "UbuntuTest"
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
    name = "Rocky0"
    vmid = 113

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
    ipconfig0 = "ip=192.168.1.213/24,gw=192.168.1.1"
    ciuser = "rich"
    cipassword = "not2bright"
    nameserver = "192.168.1.1"
    sshkeys = <<EOF
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAgpT9X/oGtbEBxfVwDwXA9x2T4WhstuaB/7KzHH+nc/ rich default
    EOF
}

resource "proxmox_vm_qemu" "Workstation" {
    # Node name has to be the same name as within the cluster
    # this might not include the FQDN
    target_node = "proxmox"
    desc = "UbuntuTest"
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
    name = "Workstation"
    vmid = 114

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
    ipconfig0 = "ip=192.168.1.214/24,gw=192.168.1.1"
    ciuser = "rich"
    cipassword = "not2bright"
    nameserver = "192.168.1.1"
    sshkeys = <<EOF
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAgpT9X/oGtbEBxfVwDwXA9x2T4WhstuaB/7KzHH+nc/ rich default
    EOF
}