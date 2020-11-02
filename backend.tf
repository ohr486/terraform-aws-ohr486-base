terraform {
  backend "s3" {
    bucket                  = "ohr486.terraform"     # SET YOUR BUCKET
    key                     = "ohr486base.tfstate"   # SET YOUR KEY
    region                  = "ap-northeast-1"
    dynamodb_table          = "tfstate"              # SET YOUR DDB TABLE
  }
}
