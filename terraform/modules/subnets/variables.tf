
variable "vpc_id" {
  type = string

}

variable "subnets" {
  type = list(object({
    cidr_block        = string
    name              = string
    availability_zone = string

  }))
}
