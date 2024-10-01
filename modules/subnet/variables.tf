variable "vpc-id" {
  type = string
}

variable "cidr-block" {
    type = string
}

variable "availability-zone" {
  type = string
}

variable "name" {
  type = string
}

variable "public-ip-bool" {
  type = bool
  default = false
}