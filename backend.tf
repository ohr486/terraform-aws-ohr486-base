terraform {
  backend "s3" {
    bucket         = "ohr486.terraform" # SET YOUR BUCKET
    key            = "ohr486base.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "tfstate"
  }
}
