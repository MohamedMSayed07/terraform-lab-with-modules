variable "cidr-block" {
  type = string
  default = "0.0.0.0/0"
}

variable "igw-id" {
  type = string
}

variable "vpc-id" {
  type = string
}

variable "name" {
  type = string
}

variable "subnet-id" {
  type = string
}