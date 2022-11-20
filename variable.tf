variable "count_instance" {
  description = "Quantidade de instancias"
  type        = number
  default     = 2
}

variable "aws_ami" {
  description = "aws ami default"
  type        = string
  default     = "ami-0ff8a91507f77f867"
}

variable "aws_instance_type" {
  description = "aws instance default"
  type        = string
  default     = "t2.micro"
}
