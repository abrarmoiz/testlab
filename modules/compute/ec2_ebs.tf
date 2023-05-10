#Create EC2 Instance
resource "aws_instance" "host1" {
  ami                    = aws_ami.test-lab.id
  instance_type          = "${var.host1_instance_type}"
  availability_zone     = "${var.az1}"
  vpc_security_group_ids = [ "${var.vpc_security_group_ids}"]
  subnet_id              = "${var.subnet_id}"
  key_name               = "intuitive-mng-key"
  tags = {
    Name = "${var.project}-host1-${var.env}",
    Project= "${var.project}",
    Environment= "${var.env}"
  }
  user_data = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<html><body><div>This is a test webserver-1!</div></body></html>" > /var/www/html/index.html
    EOF
}


resource "aws_instance" "host1" {
  ami                    = aws_ami.test-lab.id
  instance_type          = "${var.host1_instance_type}"
  availability_zone     = "${var.az1}"
  vpc_security_group_ids = [ "${var.vpc_security_group_ids}"]
  subnet_id              = "${var.subnet_id}"
  key_name               = "intuitive-mng-key"
  tags = {
    Name = "${var.project}-host2-${var.env}",
    Project= "${var.project}",
    Environment= "${var.env}"
  }
  user_data = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<html><body><div>This is a test webserver-2!</div></body></html>" > /var/www/html/index.html
    EOF
}


resource "aws_ami" "test-lab" {
  name                = "test-lab"
  virtualization_type = "hvm"
  root_device_name    = "/dev/xvda"
  imds_support        = "v2.0" 
  ebs_block_device {
    device_name = "/dev/xvda"
    snapshot_id = "snap-12345"
    volume_size = 8
  }
}

