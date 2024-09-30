resource "aws_route_table" "my-route" {
  vpc_id = var.vpc-id

  route {
    cidr_block = var.cidr-block
    gateway_id = var.igw-id
  }

  tags = {
    Name = var.name
  }
}

resource "aws_route_table_association" "rt-association" {
  subnet_id      = var.subnet-id
  route_table_id = aws_route_table.my-route.id
}