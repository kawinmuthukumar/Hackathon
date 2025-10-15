# terraform/variables.tf (keep variables here)
variable "region" {
  default = "us-west-2"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ami_id" {
  description = "AMI ID for EC2"
  default = "ami-03aa99ddf5498ceb9"
}

variable "min_size" {
  default = 1
}

variable "max_size" {
  default = 3
}

variable "bucket_name" {
  description = "S3 bucket name"
  default = "my-video-bucket-382345110959"
}