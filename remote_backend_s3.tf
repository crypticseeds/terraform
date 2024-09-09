terraform {
  backend "s3" {
    bucket = "yelp-camp-remote-backend-45646"
    key    = "yelp-camp/terraform.tfstate"
    region = "eu-west-2"
  }
}