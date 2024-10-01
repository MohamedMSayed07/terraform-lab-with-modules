variable "ami" {
  type = string
  default = "ami-0e86e20dae9224db8"
}


variable "sg-id" {
  type = list(string)
}

variable "availability-zone" {
  type = string
}

variable "name" {
  type = string
}

variable "subnet-id" {
  type = string
}