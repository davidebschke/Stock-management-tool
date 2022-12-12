module "management" {
  source = "../../modules/subnets"
  vpc_id = var.vpc_id
  subnets = [{
    availability_zone = "us-west-2a"
    cidr_block        = "10.0.32.0/24"
    name              = "management_a"
    }, {
    availability_zone = "us-west-2b"
    cidr_block        = "10.0.48.0/24"
    name              = "management_b"
  }]
}
