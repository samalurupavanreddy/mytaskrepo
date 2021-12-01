
resource "aws_route_table_association" "rt_asso1" {
  subnet_id      = aws_subnet.mysubnet-1.id
  route_table_id = aws_route_table.my_rt1.id
}

resource "aws_route_table_association" "rt_asso2" {
  subnet_id      = aws_subnet.mysubnet-2.id
  route_table_id = aws_route_table.my_rt1.id
}