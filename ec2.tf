provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "myec2" {
  ami           = "ami099720109477/ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-20211129-"
  instance_type = "t2.micro"
  subnet_id   = "subnet-049b97e1d7c38467c"
  key_name = "sshkey1"
  security_groups = ["sg-052b7d954440d8def"]
  tags = {
    Name = "Ec2tf"
  }
}
© 2022 GitHub, Inc.
Terms
Pr
