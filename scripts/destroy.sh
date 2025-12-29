#!/bin/bash

set -e

DIR_NAME="Vpc-Peering-Terraform"

if [ ! -d "$DIR_NAME" ]; then
  echo "Directory $DIR_NAME Does Not Exist!"
  exit 1
fi

echo "Changing Directory..."
cd "$DIR_NAME"

echo "Destroying Terraform Infrastructure..."
terraform destroy -auto-approve

echo "Infrastructure Destroyed Successfully!"