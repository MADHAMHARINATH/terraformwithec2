terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      access_key = "AKIA4C42SYVUVVYM4VWD"
      secret_key = "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"
      region     = "us-east-1"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
