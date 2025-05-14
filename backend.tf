terraform {
  backend "s3" {
    bucket         = "my-eks-backeup1231"
    key            = "path/to/my/key"
    region         = "us-west-1"
    dynamodb_table = "my-lock-table"
    encrypt        = true
  }
}
