# modules/asg/variables.tf
variable "min_size" {}
variable "max_size" {}
variable "launch_template_id" {}
variable "subnet_ids" { type = list(string) }
variable "target_group_arn" {}