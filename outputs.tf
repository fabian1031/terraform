output "nombre_bucket" {
  description = "Nombre del bucket creado"
  value       = aws_s3_bucket.mi_bucket.bucket
}

output "region_bucket" {
  description = "Region donde fue creado el bucket"
  value       = aws_s3_bucket.mi_bucket.region
}
output "id_servidor" {
  description = "ID de la EC2"
  value       = aws_instance.mi_servidor.id
}
output "ip_publica_servidor" {
  description = "IP publica de la EC2"
  value       = aws_instance.mi_servidor.public_ip
}