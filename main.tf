provider "aws" {
  region = var.region
}

data "aws_ssm_parameter" "amzn2_ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}


resource "aws_instance" "amazonlinux2" {
  ami                    = data.aws_ssm_parameter.amzn2_ami.id
  instance_type          = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
