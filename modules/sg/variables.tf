variable "description" {
  type = string
  default = "my-sg"
}

variable "name" {
  type = string
  default = "my-ssh-SG"
}

variable "vpc-id" {
  type = string
}

variable "secgp-cidr" {
  type        = string
  description = "CIDR blocks for the first ingress rule"
  default     = "0.0.0.0/0"
}

variable "from-port" {
  type = number
  default = 22
}

variable "to-port" {
  type = number
  default = 22
}

variable "secgp-cidr2" {
  type        = string
  description = "CIDR blocks for the first ingress rule"
  default     = "0.0.0.0/0"
}

variable "from-port2" {
  type = number
  default = 3000
}

variable "to-port2" {
  type = number
  default = 3000
}

# Variable to enable or disable ingress rule 1
variable "enable_ingress_rule_1" {
  type        = bool
  description = "Whether to enable the first ingress rule"
  default     = true  # Default is true (enabled)
}

# Variable to enable or disable ingress rule 2
variable "enable_ingress_rule_2" {
  type        = bool
  description = "Whether to enable the second ingress rule"
  default     = true  # Default is true (enabled)
}