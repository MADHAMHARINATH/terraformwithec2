provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0e472ba40eb589f49"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
