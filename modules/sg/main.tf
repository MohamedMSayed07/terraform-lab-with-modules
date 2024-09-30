resource "aws_security_group" "my-ssh-SG" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc-id
 
  tags = {
    Name = var.name
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  count             = var.enable_ingress_rule_1 ? 1 : 0
  security_group_id = aws_security_group.my-ssh-SG.id
  cidr_ipv4         = var.secgp-cidr
  from_port         = var.from-port
  ip_protocol       = "tcp"
  to_port           = var.to-port
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  count             = var.enable_ingress_rule_2 ? 1 : 0
  security_group_id = aws_security_group.my-ssh-SG.id
  cidr_ipv4         = var.secgp-cidr2
  from_port         = var.from-port2
  ip_protocol       = "tcp"
  to_port           = var.to-port2
}


resource "aws_vpc_security_group_egress_rule" "allow-all1" {
  security_group_id = aws_security_group.my-ssh-SG.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}