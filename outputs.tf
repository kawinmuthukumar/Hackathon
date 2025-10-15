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

output "alb_dns" {
  value = module.alb.dns_name
}