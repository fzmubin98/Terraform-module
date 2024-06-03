variable "ec2-Name" {
  description = "Name of the EC2 instance we will be creation"
  type        = string
}

variable "ec2-Owner" {
  description = "Owner of the EC2 instance we will be creation"
  type        = string
}

variable "aws_subnet" {
  description = "Value of the subnet"
  type        = string
  default     = null
}

# variable "ec2_count" {
#   description = "Value of the subnet"
#   type        = number
#   default     = 1
# }