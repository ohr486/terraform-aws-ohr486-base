## Security Group

module "security-group_ssh" {
  source  = "terraform-aws-modules/security-group/aws//modules/ssh"

  name = "ohr486base-sg-ssh"
  vpc_id = module.vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]

  tags = {
    Name     = "ohr486base-sg-ssh"
    Resource = "ohr486base"
  }
}

module "security-group_http-80" {
  source  = "terraform-aws-modules/security-group/aws//modules/http-80"

  name = "ohr486base-sg-http-80"
  vpc_id = module.vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]

  tags = {
    Name     = "ohr486base-sg-http-80"
    Resource = "ohr486base"
  }
}

module "security-group_https-443" {
  source  = "terraform-aws-modules/security-group/aws//modules/https-443"

  name = "ohr486base-sg-https-443"
  vpc_id = module.vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]

  tags = {
    Name     = "ohr486base-sg-https-443"
    Resource = "ohr486base"
  }
}
