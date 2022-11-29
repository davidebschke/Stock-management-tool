
# resource "aws_subnet" "name" {
# for_each = {
# "management_a" = {vpc_id= aws_vpc.opt-vpc.id ,cidr-Block= var.cidrBlock[0] ,availabilityZone="us-west-2a"}
# "management_b" = {vpc_id= aws_vpc.opt-vpc.id ,cidr-Block= var.cidrBlock[1] ,availabilityZone="us-west-2b"}
# "organization_a" = {vpc_id= aws_vpc.opt-vpc.id ,cidr-Block= var.cidrBlock[4] ,availabilityZone="us-west-2a"}
# "organization_b" = {vpc_id= aws_vpc.opt-vpc.id ,cidr-Block= var.cidrBlock[5] ,availabilityZone="us-west-2b"}
# "warehouse_a" = {vpc_id= aws_vpc.opt-vpc.id ,cidr-Block= var.cidrBlock[6] ,availabilityZone="us-west-2a"}
# "warehouse_b" = {vpc_id= aws_vpc.opt-vpc.id ,cidr-Block= var.cidrBlock[7] ,availabilityZone="us-west-2b"}
# "technician_deployment_a" = {vpc_id= aws_vpc.opt-vpc.id ,cidr-Block= var.cidrBlock[8] ,availabilityZone="us-west-2a"}
# "technician_deployment_b" = {vpc_id= aws_vpc.opt-vpc.id ,cidr-Block= var.cidrBlock[9] ,availabilityZone="us-west-2b"}
# }
#   vpc_id = each.value.vpc_id
#   cidr_block = each.value.cidr-Block
#   availability_zone = each.value.availabilityZone
#   tags={
#     Name = each.key
#   }
# }
