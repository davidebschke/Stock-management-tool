variable "vpc_id" {
  type = string
}

variable "iam_role_warehouse" {
  type = string
  default = "arn:aws:iam::886389208156:role/LabRole"
}