terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "default"
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami = "ami-067f5c3d5a99edc80"
  instance_type = "t3.micro"
}