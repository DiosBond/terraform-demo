provider "kind" {
  provider   = "docker"
  kubeconfig = pathexpand("${path.module}/kind-config")
}

provider "flux" {
  kubernetes = {
    config_path = "~/.kube/config"
  }
}

resource "kind_cluster" "this" {
  name = "kind-cluster"
  config = <<-EOF
        apiVersion: kind.x-k8s.io/v1alpha4
        kind: Cluster
        nodes:
        - role: control-plane
        - role: worker
    EOF
}


module "kind_cluster" {
  source = "github.com/den-vasyliev/tf-kind-cluster"
}

variable "GITHUB_OWNER" {
  type    = string
  default = "DiosBond"
}

variable "GITHUB_TOKEN" {
  type    = string
  default = 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
}

variable "FLUX_GITHUB_REPO" {
  type    = string
  default = github.com/DiosBond/go_bot
}

module "github_repository" {
  source                   = "github.com/den-vasyliev/tf-github-repository"
  github_owner             = var.GITHUB_OWNER
  github_token             = var.GITHUB_TOKEN
  repository_name          = var.FLUX_GITHUB_REPO
  public_key_openssh       = module.tls_private_key.public_key_openssh
  public_key_openssh_title = "flux"
}

module "tls_private_key" {
  source = "github.com/den-vasyliev/tf-hashicorp-tls-keys"

  algorithm   = var.algorithm
  ecdsa_curve = var.ecdsa_curve
}

output "private_key_pem" {
  value = module.tls_private_key.private_key_pem
}

output "public_key_openssh" {
  value = module.tls_private_key.public_key_openssh
}