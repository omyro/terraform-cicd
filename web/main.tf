# ec2 instance

resource "aws_instance" "server" {
  ami             = "ami-00beae93a2d981137"
  instance_type   = "t2.micro"
  subnet_id       = var.subnet
  security_groups = [var.sg]

  tags = {
    Name = "myserver"
  }
}