output "vm_id" {
  description = "ID of the virtual machine"
  value       = azurerm_linux_virtual_machine.main.id
}

output "vm_name" {
  description = "Name of the virtual machine"
  value       = azurerm_linux_virtual_machine.main.name
}

output "public_ip_address" {
  description = "Public IP address of the VM"
  value       = azurerm_public_ip.main.ip_address
}

output "private_ip_address" {
  description = "Private IP address of the VM"
  value       = azurerm_network_interface.main.private_ip_address
}

output "ssh_private_key" {
  description = "Private SSH key to connect to the VM"
  value       = tls_private_key.ssh.private_key_pem
  sensitive   = true
}

output "ssh_connection_string" {
  description = "SSH connection string"
  value       = "ssh -i private_key.pem ${var.admin_username}@${azurerm_public_ip.main.ip_address}"
}
