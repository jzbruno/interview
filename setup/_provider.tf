provider "aws" {
  profile = "jzbruno-terraform"
  region  = "us-east-1"
}

terraform {
  backend "s3" {
    bucket  = "jzbruno-interview"
    key     = "tfstate"
    profile = "jzbruno-terraform"
    region  = "us-east-1"
  }
}
