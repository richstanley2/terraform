resource "proxmox_vm_qemu" "MAIL" {
    # Node name has to be the same name as within the cluster
    # this might not include the FQDN
    target_node = "proxmox"
    desc = "email server"
    onboot = true

    # The template name to clone this vm from
    clone = "DebianMail"

    # Activate QEMU agent for this VM
    agent = 1

    os_type = "cloud-init"
    cores = 4
    sockets = 2
    vcpus = 0
    cpu = "host"
    memory = 3072
    name = "MAIL.oxynomoly.com"
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
    ipconfig0 = "ip=192.168.1.30/24,gw=192.168.1.1"
    ciuser = "rich"
    cipassword = "not2bright"
    nameserver = "192.168.1.1"
    sshkeys = <<EOF
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAgpT9X/oGtbEBxfVwDwXA9x2T4WhstuaB/7KzHH+nc/ rich default
    EOF
}