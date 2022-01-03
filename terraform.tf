provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "myec2" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t2.micro"
  subnet_id   = "subnet-049b97e1d7c38467c"
  key_name = "sshkey1"
  security_groups = ["sg-052b7d954440d8def"]
  tags = {
    Name = "Ec2tf"
  }
}
