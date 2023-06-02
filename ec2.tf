# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 5.0.1" # Optional but recommended in production
    }
  }
}
#provider "harness" {
  #endpoint         = "https://app.harness.io/gateway"
  #account_id       = "El-LtJ6yTES35NhdoNI73w"
  #platform_api_key = "pat.El-LtJ6yTES35NhdoNI73w.647489ff2b0261625f84d0f0.7lR1w9RyT3kBcIk3j4IB"
#}
# Provider Block
provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region = "us-east-1"
}
# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0715c1897453cabd1" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t2.micro"
}
