terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 1.0.10"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
   ami           = "ami-0792f512117871b0b"
   instance_type = "t2.micro"

   tags = {
    Name = var.instance_name
   }

   #lifecycle {
   # create_before_destroy = true
   #}
 }