terraform {
  backend "s3" {
    bucket = "terraform-clickmark-tf"
    key    = "terraform-clickmark-tf/terraform.tfstate"
    region = "us-east-1"
  }
}