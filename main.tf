module "vpc" {
  source = "./modules/vpc"
  cidr-block = var.vpc-cidr-block
  name = "my-vpc"
}

module "igw" {
  source = "./modules/igw"
  vpc-id = module.vpc.id
  name = "my-igw"
}

module "public-subnet" {
  source = "./modules/subnet"
  name = "public-subnet"
  vpc-id = module.vpc.id
  cidr-block = var.public-subnet-cidr
  availability-zone = var.public-subnet-az
  public-ip-bool = true
}

module "private-subnet" {
  source = "./modules/subnet"
  name = "private-subnet"
  vpc-id = module.vpc.id
  cidr-block = var.private-subnet-cidr
  availability-zone = var.private-subnet-az
  public-ip-bool = false
}

module "public-sg" {
  source = "./modules/sg"
  name = "public-sg-ssh"
  description = "enable ssh only"
  vpc-id = module.vpc.id
  enable_ingress_rule_1 = true
  from-port = 22
  to-port = 22
}

module "private-sg" {
  source = "./modules/sg"
  name = "private-sg-ssh-3000"
  description = "enable ssh and 3000"
  vpc-id = module.vpc.id
  enable_ingress_rule_1 = true
  from-port = 22
  to-port = 22

  enable_ingress_rule_2 = true
  from-port2 = 3000
  to-port2 = 3000
}

module "public-route-table" {
  source = "./modules/route-table"
  vpc-id = module.vpc.id
  cidr-block = "0.0.0.0/0"
  name = "my-public-rt"
  igw-id = module.igw.id
  subnet-id = module.public-subnet.id
}

module "private-route-table" {
  source = "./modules/route-table"
  vpc-id = module.vpc.id
  cidr-block = var.vpc-cidr-block
  name = "my-private-rt"
  igw-id = "local"
  subnet-id = module.private-subnet.id
}


module "Bastion" {
  source = "./modules/ec2"
  sg-id = [ module.public-sg.id ]
  availability-zone = var.public-subnet-az
  subnet-id = module.public-subnet.id
  name = "Bastion"
}


module "App" {
  source = "./modules/ec2"
  sg-id = [ module.private-sg.id ]
  availability-zone = var.private-subnet-az
  subnet-id = module.private-subnet.id
  name = "App"
}