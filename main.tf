terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "bucket" {
  source        = "./modules/s3"
  nombre_bucket = var.nombre_bucket
}

module "servidor" {
  source         = "./modules/ec2"
  nombre         = "mi-primer-servidor"
  tipo_instancia = "t3.micro"
}
