resource “aws_instance” “testinstance” {
ami = “ami — 028598a84ca601344”
instance_type = “t2.micro”
key_name “testinstance”
tags {
Name = “testinstance”
}
}
