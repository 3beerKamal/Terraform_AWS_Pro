resource "aws_eip" "el_ip1" {
}

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.el_ip1.id
  subnet_id     = aws_subnet.public_subnet1.id

  depends_on = [
    aws_internet_gateway.igw
    ]
}