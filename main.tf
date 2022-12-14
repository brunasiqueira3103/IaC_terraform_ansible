terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = "SEU_ACCESS_KEY"
  secret_key = "SUA_KEY_SECRET"
}

resource "aws_instance" "iac_server" {
  ami           = "ami-0574da719dca65348"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["SUA_VPC"]
  subnet_id              = "SUA_SUBNET"
  key_name = "SEU_PAR_DE_CHAVES(.PEM)"
  tags = {
    Name = "IaC_Curso"
  }
}

