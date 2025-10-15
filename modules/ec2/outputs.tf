# modules/ec2/outputs.tf
output "instance_id" {
  value = aws_instance.web.id
}
output "launch_template_id" {
  value = aws_launch_template.template.id
}