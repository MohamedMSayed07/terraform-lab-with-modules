variable "vpc-id" {
  type = string
}

variable "cidr-block" {
    type = string
    default = "192.168.1.0/24"
}

variable "availability-zone" {
  type = string
  default = "us-east-1a"
}

variable "name" {
  type = string
  default = "my-public-subnet"
}

variable "public-ip-bool" {
  type = bool
  default = false
}