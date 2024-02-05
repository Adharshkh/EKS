terraform {
  backend "s3" {
        bucket = "warlord101"
        key     = "myproject022/terraform.tfstate"
        region = "us-east-2"
  }
}
