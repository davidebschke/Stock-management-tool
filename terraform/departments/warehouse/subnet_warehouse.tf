module "warehouse" {
  source = "../../modules/subnets"
  vpc_id = aws_vpc.smt-vpc.id
  subnets = [{
    availability_zone = "us-west-2a"
    cidr_block        = "10.0.96.0/24"
    name              = "warehouse_a"
    }, {
    availability_zone = "us-west-2b"
    cidr_block        = "10.0.112.0/24"
    name              = "warehouse_b"
  }]
}
