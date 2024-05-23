variable "GOOGLE_PROJECT" {
  type        = string
  description = "GCP project name"
}

variable "GOOGLE_REGION" {
  type        = string
  default     = "us-central1-c"
  description = "GCP region to use"
}

variable "GKE_NUM_NODES" {
  type        = number
  default     = 2
  description = "GKE nodes number"
}

variable "FLUX_GITHUB_REPO" {
  type        = string
}

variable "GITHUB_OWNER" {
  type        = string
}

variable "GITHUB_TOKEN" {
  type        = string
}

variable "algorithm" {
  type        = string
}

variable "ecdsa_curve" {
  type        = string
}