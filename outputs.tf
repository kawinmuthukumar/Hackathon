# outputs.tf
output "vpc_id" {
  value = module.vpc.vpc_id
}
output "ec2_instance_id" {
  value = module.ec2.instance_id
}
output "asg_name" {
  value = module.asg.asg_name
}
output "s3_bucket" {
  value = module.s3.bucket_name
}
output "alb_dns" {
  value = module.alb.dns_name
}

# terraform/variables.tf
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
  default = "ami-05996ba50e0ff0068" # Valid AMI for us-west-2
}

variable "min_size" {
  default = 1
}

variable "max_size" {
  default = 3
}

variable "bucket_name" {
  description = "S3 bucket name"
  default = "my-video-bucket-382345110953239"
}