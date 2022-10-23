resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id
  tags = {
    Name ="igw"
  }
  depends_on = [aws_subnet.public_sub1]
}

