provider "aws" {
  region = "us-east-1"
  shared_config_files      = ["/home/momo/.aws/config"]
  shared_credentials_files = ["/home/momo/.aws/credentials"]
}

