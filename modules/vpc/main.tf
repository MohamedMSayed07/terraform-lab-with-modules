resource "aws_vpc" "my-vpc" {
  cidr_block = var.cidr-block
  tags = {
    Name = var.name
  }
}