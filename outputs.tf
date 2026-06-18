output "nombre_bucket" {
  description = "Nombre del bucket creado"
  value       = aws_s3_bucket.mi_bucket.bucket
}

output "region_bucket" {
  description = "Region donde fue creado el bucket"
  value       = aws_s3_bucket.mi_bucket.region
}