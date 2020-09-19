locals {
  additional_tags = {
    Project     = var.name
    Owner       = "terraform"
    Environment = var.environment
  }

  cluster_name = "${var.name}-${var.environment}"

  node_groups = {
    general = {
      key   = "doks.digitalocean.com/node-pool"
      value = "general"

    }

    user = {
      key   = "doks.digitalocean.com/node-pool"
      value = "user"

    }

    worker = {
      key   = "doks.digitalocean.com/node-pool"
      value = "worker"

    }
  }
}
