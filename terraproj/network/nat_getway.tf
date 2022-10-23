resource "aws_eip" "eip" {
  vpc = true
}

resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_ei.eip.id
  subnet_id     = aws_subnet.public_sub1.id

  tags = {
    Name = "ngw"
  }

  depends_on = [aws_internet_gateway.igw]
}
