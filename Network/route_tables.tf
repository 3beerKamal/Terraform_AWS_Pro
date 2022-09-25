resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.vpc1.id
}


resource "aws_route" "public_route"{
    route_table_id = aws_route_table.public_route_table.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
}


resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.vpc1.id
}


resource "aws_route" "private_route"{
    route_table_id = aws_route_table.private_route_table.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_gw.id
}