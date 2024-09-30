# module "vpc" {
#   source = "../vpc"
# }

resource "aws_subnet" "my-subnet" {
  vpc_id     = var.vpc-id
  cidr_block = var.cidr-block
  availability_zone = var.availability-zone
  map_public_ip_on_launch = var.public-ip-bool

  tags = {
    Name = var.name
  }
}