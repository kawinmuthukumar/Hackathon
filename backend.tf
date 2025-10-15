# terraform/backend.tf
terraform {
  backend "s3" {
    bucket = "spacelift-terraform-state-382345110959"
    key    = "hackathon/terraform.tfstate"
    region = "us-west-2"
  }
}