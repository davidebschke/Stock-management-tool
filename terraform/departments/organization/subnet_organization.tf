module "organization" {
  source = "../../modules/subnets"
  vpc_id = aws_vpc.opt-vpc.id
  subnets = [{
    availability_zone = "us-west-2a"
    cidr_block        = "10.0.64.0/24"
    name              = "organization_a"
    }, {
    availability_zone = "us-west-2b"
    cidr_block        = "10.0.80.0/24"
    name              = "organization_b"
  }]
}