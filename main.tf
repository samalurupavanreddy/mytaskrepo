#provider "aws" {
 # region = var.aws_region
  #access_key = var.aws_access_key
  #secret_key = var.aws_secret_key#
}

provider "aws" {
  region     =  "us-east-1"
  shared_credentials_file = "c:/Users/lenovo/.aws/credentials"
  profile                 = "default"
}
