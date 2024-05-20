terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
 
  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
  profile = "default"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0cf2b4e024cdb6960"
  instance_type = "t2.micro"
 
  tags = {
    Name = "EC2 Teste"
  }
}