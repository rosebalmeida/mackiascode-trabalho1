provider "aws" {
access_key = "AKIASHT7KSLGGXYKFPGF"
secret_key = "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"
region = "us-east-1"
}
resource "aws_instance" "webserver" {
  ami = "ami-0b898040803850657"
  instance_type = "t2.micro"
}
resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "dedicated"

  tags = {
    Name = "main"
  }
}