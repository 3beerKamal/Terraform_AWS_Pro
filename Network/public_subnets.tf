resource "aws_subnet" "public_subnet1" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = var.public_subnet1_cidr
  availability_zone = var.first_AZ
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public_subnet2" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = var.public_subnet2_cidr
  availability_zone = var.second_AZ
  map_public_ip_on_launch = true
}
