#Terrastate Remote Location
terraform {
  backend "s3" {
    bucket = "dmc-terraform-state"
    key = "terraform-demo.tfstate"
    region="ap-southeast-2"
  }
}

data "terraform_remote_state" "base_state" {
  backend = "s3"
  config {
    bucket = "dmc-terraform-state"
    key = "terraform-read.tfstate"
    region = "${var.REGION}"
  }
}

#AWS Base Configuration
provider "aws" {
  region="${var.REGION}"
}
