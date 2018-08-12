resource "aws_security_group" "bastion" {
  name        = "${var.name}"
  description = "Bastion security settings"
  vpc_id      = "${aws_default_vpc.default.id}"

  tags {
    Name        = "${var.name}"
  }

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    protocol    = -1
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_security_group" "access" {
  name        = "${var.name}-access"
  description = "Bastion passthrough access security settings"
  vpc_id      = "${aws_default_vpc.default.id}"

  tags {
    Name        = "${var.name}"
  }

  ingress {
    protocol        = "tcp"
    from_port       = 22
    to_port         = 22
    security_groups = ["${aws_security_group.bastion.id}"]
  }

  lifecycle {
    create_before_destroy = true
  }
}
