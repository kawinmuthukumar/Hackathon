# modules/vpc/main.tf
resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
}
resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone = "${var.region}a" # e.g., us-west-2a
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone = "${var.region}b" # e.g., us-west-2b
  map_public_ip_on_launch = true
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
}
