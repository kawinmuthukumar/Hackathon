# terraform/variables.tf (keep variables here)
variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ami_id" {
  description = "AMI ID for EC2"
  default = "ami-0360c520857e3138f"
}

variable "min_size" {
  default = 1
}

variable "max_size" {
  default = 3
}

