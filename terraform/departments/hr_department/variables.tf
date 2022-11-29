# Subnet cidr Blocks
variable "cidrBlock" {
type = list
default = [
"10.0.0.0/24",
"10.0.16.0/24",
]
}

# Subnet name/key
variable "names_keys" {
type = list
default = [
"hr_department_a",
"hr_department_b",
]
}

# Subnet availabilityZone
variable "availability_Zone" {
type = list
default = [
"us-west-2a",
"us-west-2b",
]
}

# Subnet vpc_id
# Its a list for more as one Vpc actually only one vpc
variable "vpcs" {
type = list
default = [
aws_vpc.opt-vpc.id
]
}

