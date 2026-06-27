output "id_servidor" {
  description = "ID de la instancia EC2"
  value       = aws_instance.servidor.id
}

output "ip_publica" {
  description = "IP publica de la instancia EC2"
  value       = aws_instance.servidor.public_ip
}
