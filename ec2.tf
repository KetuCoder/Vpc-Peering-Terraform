resource "aws_instance" "ec2_a" {
  ami                    = var.instance_ami
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.subnet_a.id
  vpc_security_group_ids = [aws_security_group.allow_icmp_ssh.id]

  tags = {
    Name = "EC2-VPC-A"
  }
}

resource "aws_instance" "ec2_b" {
  ami                    = var.instance_ami
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.subnet_b.id
  vpc_security_group_ids = [aws_security_group.allow_icmp_ssh_b.id]

  tags = {
    Name = "EC2-VPC-B"
  }
}