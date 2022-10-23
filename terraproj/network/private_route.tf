resource "aws_route_table" "priv_rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.ngw.id
  }


  tags = {
    Name = "priv_rt"
  }
}

resource "aws_route_table_association" "priv_rt1" {
  subnet_id      = aws_subnet.priv_sub1.id
  route_table_id = aws_route_table.priv_rt.id
}
resource "aws_route_table_association" "priv_rt2" {
  subnet_id      = aws_subnet.priv_sub2.id
  route_table_id = aws_route_table.priv_rt.id
