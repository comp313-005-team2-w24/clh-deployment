variable "project_id" {
  description = "The Google Cloud project ID."
  type        = string
}

variable "region" {
  description = "The region where the GKE cluster will be created."
  type        = string
}

variable "kubeconfig_path" {
  description = "Path to the kubeconfig file to access the Kubernetes cluster"
  type        = string
}