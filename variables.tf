variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "key_name" {
  description = "Existing EC2 key pair name"
  type        = string
}

variable "instance_ami" {
  description = "AMI ID for EC2 instances"
  type        = string
}