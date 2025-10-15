# terraform/main.tf
module "vpc" {
  source    = "./modules/vpc"
  cidr_block = var.vpc_cidr
  region    = var.region
}

module "ec2" {
  source     = "./modules/ec2"
  ami        = var.ami_id
  instance_type = var.instance_type
  subnet_id  = module.vpc.public_subnet_ids[0] # Use first subnet
}

module "asg" {
  source            = "./modules/asg"
  min_size          = var.min_size
  max_size          = var.max_size
  launch_template_id = module.ec2.launch_template_id
  subnet_ids        = module.vpc.public_subnet_ids
  target_group_arn  = module.alb.target_group_arn
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}

module "alb" {
  source     = "./modules/alb"
  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.public_subnet_ids
}