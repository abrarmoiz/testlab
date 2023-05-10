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

variable "vpc_cidr_block" {
  description = "CIDR block for webserver VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "az1" {
  description = "availability_zone 1 for VPC"
  type        = string
  default     =  "ca-central-1a"
}

variable "az2" {
  description = "availability_zone 1 for VPC"
  type        = string
  default     =  "ca-central-1b"
}

variable "dmz_subnet_cidr_block" {
  description = "CIDR block for webserver VPC"
  type        = list
  default     = ["10.10.1.0/24","10.10.2.0/24"]
}
#db_subnet_cidr_block

variable "desired_size" {
  description = "instance type for the eks nodes"
  type        = string
}

variable "max_size" {
  description = "instance type for the eks nodes"
  type        = string

}

variable "min_size" {
  description = "instance type for the eks nodes"
  type        = string

}

variable "app_subnet_cidr_block" {
  description = "CIDR block for application layer VPC"
  type        = list
  default     = ["10.10.11.0/24","10.10.12.0/24"]
}

variable "db_subnet_cidr_block" {
  description = "CIDR block for application layer VPC"
  type        = list
  default     = ["10.10.21.0/24","10.10.22.0/24"]
}

variable "aws_az" {
  description = "Availability Zone for the webserver subnet"
  type        = string
  default     = "us-east-1a"
}

variable "igw_name" {
  description = "Name for the Internet Gateway of the webserver vpc"
  type        = string
  default     = "web_server"
}

variable "rt_name" {
  description = "Name for the route table of the webserver vpc"
  type        = string
  default     = "web_server"
}

variable "vpc_name" {
  description = "Name of the vpc"
  type        = string
  default     = "web_server"
}

variable "tls"  {
  description = "Name of the vpc"
  type        = string
  default     = "disabled"
}

variable "eks_instance_type" {
  description = "instance type for the eks nodes"
  type        = string
  default     = "t3.medium"
}


variable "bastion_instance_type" {
  description = "instance type for the eks nodes"
  type        = string
  default     = "t2.micro"
}

variable "docdb_userid"  {
  description = "Name of the vpc"
  type        = string
  default     = "test"
}

variable "docdb_passwd"  {
  description = "Name of the vpc"
  type        = string
  default     = "test"
}

variable "cluster_family"  {
  description = "Name of the vpc"
  type        = string
  default     = "test"
}

variable "docdb-instance"  {
  description = "Name of the vpc"
  type        = string
  default     = "test"
}

variable "docdb_engine"  {
  description = "Name of the vpc"
  type        = string
  default     = "test"
}

#Mysql DB parameters :


variable "mysqldb_engine" {
  description = "enging for the docdb"
  type        = string
  default     = "mysql"
}

variable "mysqldb_engine_version" {
  description = "enging for the docdb"
  type        = string
  default     = "8.0"
}

variable "mysqldb_instance_count" {
  description = "# for the docdb instances"
  type        = string
  default     = "1"
}


variable "mysqldb_userid" {
  description = "user for the docdb"
  type        = string
  default     = "intuitivestage"
}

variable "mysqldb_passwd" {
  description = "pass for the docdb"
  type        = string
  default     = "intuitivestage"
}
#
variable "mysql_cluster_family" {
  description = "family for the docdb"
  type        = string
  default     =  "docdb4.0"
}

variable "mysqldb-instance" {
  description = "ec2 instance type for the docdb"
  type        = string
  default     = "db.t3.micro"
}

variable "skip_final_snapshot" {
  description = "Do you want to skip final snapshot"
  type        = string
  default     = "true"
}

variable "storage_encrypted" {
  description = "Are db contents to encrypted ? "
  type        = string
  default     = "false"
}

variable "retention_period" {
  description = "db retention_period"
  type        = string
  default = "1"
}