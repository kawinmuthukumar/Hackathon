# modules/asg/main.tf
resource "aws_autoscaling_group" "asg" {
  min_size = var.min_size
  max_size = var.max_size
  launch_template {
    id = var.launch_template_id
  }
  vpc_zone_identifier = var.subnet_ids
  target_group_arns = [var.target_group_arn]
}