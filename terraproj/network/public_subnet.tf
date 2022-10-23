resource "aws_subnet" "public_sub1" {
  vpc_id            = var.vpc_id
  cidr_block        = var.public_sub1_cider


  tags = {
    Name = "public_sub1"
  }
}


resource "aws_subnet" "private_sub2" {
  vpc_id            = var.vpc_id
  cidr_block        = var.public_sub2_cider

  tags = {
    Name = "public_sub2"
  }
}

