
# Create WebServer/DMZ Security Group
resource "aws_security_group" "test-sg" {
  name        = "Webserver-SG"
  description = "Allow inbound traffic from ALB"
  vpc_id      = aws_vpc.intuitive-vpc.id

  ingress {
    description     = "Allow traffic from web layer"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

    ingress {
    description     = "Allow traffic from web layer"
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }


  ingress {
    description     = "Allow SSH traffic from web layer"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project}-dmz-sg-${var.env}"
    Project= "${var.project}",
    Environment= "${var.env}"
  }
}
