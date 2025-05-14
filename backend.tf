terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "path/to/my/key"
    region         = "us-west-1"
    dynamodb_table = "my-lock-table"
    encrypt        = true
  }
}
