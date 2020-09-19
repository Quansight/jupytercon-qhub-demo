terraform {
  backend "s3" {
    endpoint                    = "nyc3.digitaloceanspaces.com"
    region                      = "us-west-1" # fake aws region required by terraform
    bucket                      = "qhub-jupytercon-demo-terraform-state"
    key                         = "terraform/qhub-jupytercon-demo.tfstate"
    skip_requesting_account_id  = true
    skip_credentials_validation = true
    skip_get_ec2_platforms      = true
    skip_metadata_api_check     = true
  }
}
