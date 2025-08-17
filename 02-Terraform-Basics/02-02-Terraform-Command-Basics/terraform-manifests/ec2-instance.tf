# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 6.4" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "us-west-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-06e11c4cc68c362dd" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
}
