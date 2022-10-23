resource "aws_subnet" "private_sub1" {
  vpc_id            = var.vpc_id
  cidr_block        = var.private_sub1_cider


  tags = {
    Name = "private_sub1"
  }
}


resource "aws_subnet" "private_sub2" {
  vpc_id            = var.vpc_id
  cidr_block        = var.private_sub2_cider

  tags = {
    Name = "private_sub2"
  }
}

