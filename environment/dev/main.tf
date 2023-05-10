terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region
}


module "intuitive_vpc" {
  source = "../../modules/vpc"
  project = var.project
  env = var.env
  vpc_cidr_block = var.vpc_cidr_block
  az1 = var.az1
  subnet_cidr_block = var.subnet_cidr_block
}

module "intuitive_compute" {
  source = "../../modules/compute"
  project = var.project
  env = var.env
  az1 = var.az1
  vpc_security_group_ids =  module.vpc_security_group_ids
  subnet_id =  module.subnet_id
  host1_instance_type = module.host1_instance_type
  app_subnet_id1 =  module.intuitive_vpc.app_subnet_id1
  app_subnet_id2 =  module.intuitive_vpc.app_subnet_id2
  desired_size = var.desired_size
  min_size = var.min_size
  max_size = var.max_size
}

module "intuitive_s3" {
  source = "../../modules/s3"
  project = var.project
  env = var.env
  az1 = var.az1
}

