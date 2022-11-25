# Variable for cidr block Subnets

# Later a map for Subnets Data
variable "cidrBlock" {
type = list
default = [
"10.0.0.0/24",
"10.0.16.0/24",
"10.0.32.0/24",
"10.0.48.0/24",
"10.0.64.0/24",
"10.0.80.0/24",
"10.0.96.0/24",
"10.0.112.0/24",
"10.0.128.0/24",
"10.0.144.0/24"
]
}

# Othe Variables can come here
