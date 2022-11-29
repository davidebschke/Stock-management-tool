# Subnet cidr Blocks
variable "cidrBlock_hr" {
type = list
default = [
"10.0.0.0/24",
"10.0.16.0/24",
]
}

# Subnet name/key
variable "names_keys_hr" {
type = list
default = [
"hr_department_a",
"hr_department_b",
]
}

# Subnet availabilityZone
variable "availability_Zone_hr" {
type = list
default = [
"us-west-2a",
"us-west-2b",
]
}
