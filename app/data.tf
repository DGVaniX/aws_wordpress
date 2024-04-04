data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "wordpress-state-store-1"
    key    = "net/terraform.tfstate"
    region = "eu-west-1"
  }
}

data "terraform_remote_state" "data" {
  backend = "s3"
  config = {
    bucket = "wordpress-state-store-1"
    key    = "data/terraform.tfstate"
    region = "eu-west-1"
  }
}

data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}