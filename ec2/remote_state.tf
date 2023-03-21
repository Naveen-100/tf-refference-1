data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "tf-bkt-001"
    key    = "nk/tfstate/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "tf-bkt-001_table"
  }
}
