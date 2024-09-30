resource "aws_internet_gateway" "my-IGW" {
  vpc_id = var.vpc-id

  tags = {
    Name = var.name
  }
}