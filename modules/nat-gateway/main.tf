resource "aws_nat_gateway" "nat_gateway" {
  allocation_id     = var.eip_id
  subnet_id         = var.public_subnet_id
  connectivity_type = "public"

  tags = {
    Name = var.nat_gateway_name
  }

  depends_on = [var.internet_gw_id]
}
