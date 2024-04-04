terraform {
  backend "s3" {
    bucket = "wordpress-state-store-1"
    key    = "app/terraform.tfstate"
    region = "eu-west-1"
  }
}