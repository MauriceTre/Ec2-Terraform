terraform {
  backend "s3" {
    bucket = "ansible-test-01"
    key    = "ansible/test.tfstate"
    region = "eu-central-1"
  }
}