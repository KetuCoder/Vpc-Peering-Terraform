#!/bin/bash

set -e

REPO_URI = "https://github.com/KetuCoder/Vpc-Peering-Terraform.git"
DIR_NAME = "Vpc-Peering-Terraform"

echo "Cloning Repository"
git clone $REPO_URI

echo "Changing Directory"
cd $DIR_NAME

echo "Initilizing Terraform..."
terraform init

echo "Formatting Terraform Files..."
terraform fmt

echo "Validating Terraform Configuration..."
terraform validate

echo "Planning Terraform Deployment..."
terraform plan

echo "Applying Terraform Configuration..."
terraform apply -auto-approve tfplan

echo "Deploying Completed Successfully !"