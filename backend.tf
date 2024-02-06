terraform {
  backend "s3" {
        bucket = "warlord101"
        key     = "myproject101/terraform.tfstate"
        region = "us-east-2"
  }
}
