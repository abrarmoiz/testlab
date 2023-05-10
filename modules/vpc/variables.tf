variable "project" {
  description = "name of the project"
  type        = string
  default     = "intuitive"
}
variable "aws_region" {
  description = "name of the project"
  type        = string
  default     = "us-east-1"
}
variable "env" {
  description = "name of the environment"
  type        = string
  default     = "lab-test"
}

variable "vpc_cidr_block" {
  description = "CIDR block for webserver VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "az1" {
  description = "availability_zone 1 for VPC"
  type        = string
  default     =  "us-east-1a"
}


variable "subnet_cidr_block" {
  description = "CIDR block for webserver VPC"
  type        = list
  default     = ["10.10.1.0/24","10.10.2.0/24"]
}
