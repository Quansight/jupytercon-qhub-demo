variable "name" {
  type    = string
  default = "qhub-jupytercon-demo"
}

variable "environment" {
  type    = string
  default = "dev"
}


variable "region" {
  type    = string
  default = "nyc3"
}
# jupyterhub
variable "endpoint" {
  description = "Jupyterhub endpoint"
  type        = string
  default     = "jupyter.demo.qhub.dev"
}

variable "jupyterhub-image" {
  description = "Jupyterhub user image"
  type = object({
    name = string
    tag  = string
  })
  default = {
    name = "quansight/qhub-jupyterhub"
    tag  = "4c8c28332be1fde32f786c54a5961b5f3d789e16"
  }
}

variable "jupyterlab-image" {
  description = "Jupyterlab user image"
  type = object({
    name = string
    tag  = string
  })
  default = {
    name = "quansight/qhub-jupyterlab"
    tag  = "4c8c28332be1fde32f786c54a5961b5f3d789e16"
  }
}

variable "dask-worker-image" {
  description = "Dask worker image"
  type = object({
    name = string
    tag  = string
  })
  default = {
    name = "quansight/qhub-dask-worker"
    tag  = "4c8c28332be1fde32f786c54a5961b5f3d789e16"
  }
}
