esource "aws_subnet" "subnets_hr" {
for_each = {
var.names_keys[0] = {vpc_id= var.vpcs[0] ,cidr-Block= var.cidrBlock[0] ,availabilityZone=var.availability_Zone[0]}
var.names_keys[1] = {vpc_id= var.vpcs[0] ,cidr-Block= var.cidrBlock[1] ,availabilityZone=var.availability_Zone[1]}

}
  vpc_id = each.value.vpc_id
  cidr_block = each.value.cidr-Block
  availability_zone = each.value.availabilityZone
  tags={
    Name = each.key
  }
}