resource "aws_dynamodb_table" "terraform_lock" {
  name         = "my-lock-table"  // Match the name used in backend.tf
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "my-lock-table"  // Tag the DynamoDB table for identification
  }
}
