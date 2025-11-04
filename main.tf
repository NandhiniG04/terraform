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

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "terraform-demo-bucket-nangop"
}

resource "aws_instance" "demo_ec2" {
  ami           = "ami-0bdd88bd06d16ba03"
  instance_type = "t2.micro"
}
