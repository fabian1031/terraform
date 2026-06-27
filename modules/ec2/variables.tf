variable "nombre" {
  description = "Nombre del servidor (se usa como tag)"
  type        = string
}

variable "tipo_instancia" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t3.micro"
}
