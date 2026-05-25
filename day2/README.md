# Día 2 de Terraform

## Tarea 1: El Bloque Provider

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Shared credentials/configuration file

provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "/Users/tf_user/.aws/creds"
  profile                 = "customprofile"
}
