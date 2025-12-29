output "ec2_a_private_ip" {
  value = aws_instance.ec2_a.private_ip
}

output "ec2_b_private_ip" {
  value = aws_instance.ec2_b.private_ip
}