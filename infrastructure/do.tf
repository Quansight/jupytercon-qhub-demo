provider "digitalocean" {}


module "kubernetes" {
  source = "github.com/quansight/qhub-terraform-modules//modules/digitalocean/kubernetes"

  name = local.cluster_name

  region             = var.region
  kubernetes_version = "1.18.8-do.0"

  node_groups = [

    {
      name       = "general"
      auto_scale = true

      size      = "s-2vcpu-4gb"
      min_nodes = 1
      max_nodes = 1
    },

    {
      name       = "user"
      auto_scale = true

      size      = "s-2vcpu-4gb"
      min_nodes = 1
      max_nodes = 4
    },

    {
      name       = "worker"
      auto_scale = true

      size      = "s-2vcpu-4gb"
      min_nodes = 1
      max_nodes = 4
    },

  ]
}
