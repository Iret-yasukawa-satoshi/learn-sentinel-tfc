output "instance_ami" {
  value = aws_instance.amazonlinux2.ami
}

output "instance_arn" {
  value = aws_instance.amazonlinux2.arn
}
