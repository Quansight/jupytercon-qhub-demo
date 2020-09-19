module "terraform-state" {
  source = "github.com/quansight/qhub-terraform-modules//modules/digitalocean/terraform-state"

  name   = "qhub-jupytercon-demo"
  region = "nyc3"
}

