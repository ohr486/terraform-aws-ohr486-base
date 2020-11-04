## Security Group
resource "aws_security_group" "ohr486base_allow_all" {
  name        = "ohr486base-sg-allow-all"
  description = "ohr486base-allow-all"
  vpc_id      = "${aws_vpc.ohr486base.id}"
  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags {
    Name     = "ohr486base-sg-allow-all"
    Resource = "ohr486base"
  }
}
