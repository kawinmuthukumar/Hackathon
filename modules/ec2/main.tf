# modules/ec2/main.tf
resource "aws_launch_template" "template" {
  name_prefix = "video-"
  image_id = var.ami
  instance_type = var.instance_type
}

resource "aws_instance" "web" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
}