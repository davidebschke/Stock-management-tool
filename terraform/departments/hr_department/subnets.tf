resource "aws_subnet" "subnets_hr" {
for_each = {
var.names_keys_hr[0] = {vpc_id = aws_vpc.opt-vpc.id ,cidr-Block= var.cidrBlock_hr[0] ,availabilityZone=var.availability_Zone_hr[0]}
var.names_keys_hr[1] = {vpc_id = aws_vpc.opt-vpc.id,cidr-Block= var.cidrBlock_hr[1] ,availabilityZone=var.availability_Zone_hr[1]}
}
    vpc_id = each.value.vpc_id
    cidr_block = each.value.cidr-Block
    availability_zone = each.value.availabilityZone
    tags={
        Name = each.key
    }
}
