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
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}
//creo clase y mi instancia
resource "aws_s3_bucket" "mi_bucket" {
    bucket = var.nombre_bucket //llamo a mi variable
}
resource "aws_instance" "mi_servidor" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro"
  tags = {
    Name = "mi-primer-servidor"
  }
}