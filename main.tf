data "aws_ami" "app_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["137112412989"] # AMZZ
}

resource "aws_instance" "web" {
  #ami           = data.aws_ami.app_ami.id
  ami           = "ami-05fb0b8c1424f266b"
  instance_type = var.instance_type

  tags = {
    Name = "HelloWorld"
  }
}
