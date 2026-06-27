output "nombre_bucket" {
  description = "Nombre del bucket creado"
  value       = module.bucket.nombre_bucket
}

output "region_bucket" {
  description = "Region donde fue creado el bucket"
  value       = module.bucket.region_bucket
}

output "id_servidor" {
  description = "ID de la EC2"
  value       = module.servidor.id_servidor
}

output "ip_publica_servidor" {
  description = "IP publica de la EC2"
  value       = module.servidor.ip_publica
}
