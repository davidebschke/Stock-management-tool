resource "aws_subnet" "subnets_hr" {
  for_each = { for subnet in var.subnets : subnet.name => subnet }

  vpc_id            = var.vpc_id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone
  tags = {
    Name = each.value.name
  }
}
