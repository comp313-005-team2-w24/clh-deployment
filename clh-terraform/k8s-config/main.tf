provider "kubernetes" {
  config_path = var.kubeconfig_path
}

resource "kubernetes_manifest" "auth_deployment" {
  manifest = yamldecode(file("${path.module}/auth/deployment.yaml"))
}

resource "kubernetes_manifest" "auth_service" {
  manifest = yamldecode(file("${path.module}/auth/service.yaml"))
}

resource "kubernetes_manifest" "redis_service" {
  manifest = yamldecode(file("${path.module}/redis/service.yaml"))
}

resource "kubernetes_manifest" "redis_statefulset" {
  manifest = yamldecode(file("${path.module}/redis/statefulset.yaml"))
}
