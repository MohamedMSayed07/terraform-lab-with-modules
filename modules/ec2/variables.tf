variable "ami" {
  type = string
  default = "ami-0e86e20dae9224db8"
}


variable "sg-id" {
  type = list(string)
}

variable "availability-zone" {
  type = string
  default = "us-east-1a"
}

variable "name" {
  type = string
  default = "bastion"
}

variable "subnet-id" {
  type = string
}