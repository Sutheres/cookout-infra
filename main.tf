terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  version = "~> 3.0"
  region = var.region
}

//resource "aws_instance" "example" {
//  ami = "ami-067f5c3d5a99edc80"
//  instance_type = "t3.micro"
//}