## VPC
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name   = "ohr486base"
  cidr   = "10.30.0.0/16"

  azs             = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]
  private_subnets = ["10.30.1.0/24", "10.30.2.0/24", "10.30.3.0/24"]
  public_subnets  = ["10.30.101.0/24", "10.30.102.0/24", "10.30.103.0/24"]

  tags = {
    Name     = "ohr486base-vpc"
    Resource = "ohr486base"
  }
}
