terraform {
  backend "s3" {
    bucket = "devopsfoundry-tf"
    key    = "yelp-camp/terraform.tfstate"
    region = "eu-west-2"
  }
}