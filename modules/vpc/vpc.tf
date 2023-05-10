# Create a VPC
resource "aws_vpc" "intuitive-vpc" {
  cidr_block = "${var.vpc_cidr_block}"
 
  tags = {
    #Name = "intuitive-VPC-Stage", 
    Name = "${var.project}-vpc-${var.env}"
    Project= "${var.project}",
    Environment= "${var.env}"
  }
}

# Create a subnet
resource "aws_subnet" "subnet" {
  vpc_id                  = aws_vpc.intuitive-vpc.id
  cidr_block = "${var.subnet_cidr_block[0]}"
  availability_zone = "${var.az1}"
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.project}-dmz-subnet1-${var.env}"
    Project= "${var.project}",
    Environment= "${var.env}"
  }
}
 
