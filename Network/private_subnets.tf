resource "aws_subnet" "private_subnet1" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = var.private_subnet1_cidr
  availability_zone = var.first_AZ
}

resource "aws_subnet" "private_subnet2" {
  vpc_id = aws_vpc.vpc1.id
  cidr_block = var.private_subnet2_cidr
  availability_zone = var.second_AZ
}
