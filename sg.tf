## Security Group

### SSH

resource "aws_security_group" "ssh" {
  vpc_id      = aws_vpc.ohr486base.id
  name        = "${local.resource}-ssh"
  description = "${local.resource}-ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [local.cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name     = "${local.resource}-ssh"
    Resource = local.resource
  }
}


