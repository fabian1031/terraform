terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}
provider "aws"{
    region = "us-east-1"
}
//creo clase y mi instancia
resource "aws_s3_bucket" "mi_bucket" {
    bucket = var.nombre_bucket //llamo a mi variable
}
