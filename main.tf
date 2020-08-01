provider "aws" {
  region="us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "server" {
  ami               = "ami-08b1749de953746cb"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  key_name          = "main-key"

  tags = {
    Name = "my server"
  }
}
