# VPC Peering with EC2 using Terraform

This project creates:
- Two VPCs
- One VPC peering connection
- Route tables for cross-VPC traffic
- Two EC2 t2.micro instances (one per VPC)

## Prerequisites
- Terraform >= 1.3
- AWS CLI configured
- Existing EC2 key pair

## Deploy
terraform init
terraform plan
terraform apply

## Test Connectivity
1. SSH into EC2 in VPC-A
2. Ping private IP of EC2 in VPC-B

ping <EC2_B_PRIVATE_IP>

## Cleanup
terraform destroy