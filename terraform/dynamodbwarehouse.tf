resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "WarehouseDB"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "objectID"
  range_key = "Goods Name"

    attribute {
        name = "objectID"
        type = "S"
    }

    attribute {
        name = "Goods Name"
        type = "S"
    }

    attribute {
        name = "Piece of goods"
        type = "N"
    }

    attribute {
        name="Price of goods"
        type="N"
    }
}