resource "aws_instance" "instance" {
  ami           = var.ami
  instance_type = "t2.micro"
  vpc_security_group_ids = var.sg-id
  availability_zone = var.availability-zone
  subnet_id = var.subnet-id
  key_name = "3am"
   
  tags = {
    Name = var.name
  }

  }