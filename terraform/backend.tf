terraform {
  backend "s3" {
    bucket = "terraform-state-demonstration"
    key    = "development/customers"
    region = "us-east-1"
  }
}