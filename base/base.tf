provider "aws" {
  region     = "eu-west-2"
}

terraform {
  backend "s3" {
    region = "eu-west-2"
    bucket = "mobilise-rs-remote-state-base"
    key = "terraform.tfstate"
  }
}

data "terraform_remote_state" "web" {
  backend = "s3"

  config = {
    region = var.region
    bucket = "mobilise-rs-remote-state-web"
    key    = "terraform.tfstate"
  }
}

module "remote_state" {
  source = "github.com/turnbullpress/tf_remote_state.git"
  prefix = var.prefix
  environment = var.environment
}

resource "aws_instance" "base" {
    ami = "ami-0a244485e2e4ffd03"
  instance_type = "t2.micro"
  subnet_id = data.terraform_remote_state.web.outputs.public_subnet_id
  }

resource "aws_eip" "base" {
  instance = aws_instance.base.id
  vpc = true
}
