provider "aws" {
  access_key = "AKIA4C42SYVUVVYM4VWD"
  secret_key = "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"
  region     = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0e472ba40eb589f49"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
