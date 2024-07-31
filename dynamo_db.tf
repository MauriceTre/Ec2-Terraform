resource "aws_dynamodb_table" "Mond" {
  name           = "Mond-table"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }
}