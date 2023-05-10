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
  default     = "stage"
}

variable "az1" {
  description = "az for the host"
  type        = string
  default     = "us-east-1a"
}

variable "host1_instance_type" {
  description = "instance type for the eks nodes"
  type        = string
  default     = "t2.micro"
}

variable "vpc_security_group_ids" {
  description = "az for the bastion host"
  type        = string

}

variable "subnet_id" {
  description = "az for the bastion host"
  type        = string
}

