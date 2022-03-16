
provider "aws" {
  assume_role {
    role_arn     = "arn:aws:iam::723560776897:role/SecEngEC2Role"
    session_name = "terraform_session"
  }
}

terraform {
  backend "s3" {
    bucket = "popolito-dev-dss-bucket"
    key    = "/tfconf/"
    region = "eu-central-1"
  }
}

