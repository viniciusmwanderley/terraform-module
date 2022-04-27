variable "name" {
  type        = string
  description = "Name of product"
}

variable "enable_sg" {
  type        = bool
  default     = false
  description = "Enable functionality of creation of security group"
}

variable "ingress_ports" {
  type        = list(number)
  default     = []
  description = "List of ports that will be released"
}