# terraform/variables.tf
variable "region" {
  default = "us-west-2"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "instance_type" {
  default = "t3.medium"
}

variable "ami_id" {
  description = "AMI ID for EC2"
  default = "ami-0abcdef1234567890" # Replace with a valid AMI ID for your region
}

variable "min_size" {
  default = 1
}

variable "max_size" {
  default = 3
}

variable "bucket_name" {
  description = "S3 bucket name"
  default = "my-video-bucket-382345110959" # Replace with a unique name
}