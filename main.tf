provider "aws" {
  region = var.region
}

# data "aws_ami" "amzn2_ami" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["amzn2-ami-hvm-2.0.20220426.0-x86_64-gp2"]
#   }

#   owners = ["137112412989"] # Canonical
# }

resource "aws_instance" "amazonlinux2" {
  ami                    = "ami-0f9a314ce79311c88"
  instance_type          = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
