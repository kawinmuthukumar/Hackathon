# terraform/modules/alb/variables.tf
variable "vpc_id" {}
variable "subnet_ids" { type = list(string) }