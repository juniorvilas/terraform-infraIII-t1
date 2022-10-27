output "instancia_ec2" {
  value = aws_instance.carlindo_ec2.*.public_ip
}