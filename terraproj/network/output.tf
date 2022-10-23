output nat_gatewiay_id  {
    value = aws_nat_gateway.ngw.id
}

output internet_gateway_id {
    value = aws_internet_gateway.igw.id
}

output private_route_table_id {
    value = aws_route_table.private_rt.id
}

output public_route_table_id {
    value = aws_route_table.public_rt.id
}

output public_subnet_1_id {
    value = aws_subnet.public_sub1.id
}

output public_subnet_2_id {
    value = aws_subnet.public_sub2.id
}

output private_subnet_1_id {
    value = aws_subnet.priv_sub1.id
}

output private_subnet_2_id {
    value = aws_subnet.private_sub2.id
}
