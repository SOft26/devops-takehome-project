resource "kubernetes_secret" "app_config" {
  metadata {
    name      = "app-config"
    namespace = kubernetes_namespace.apps.metadata[0].name
  }

  data = {
    ENV = "dev"
  }

  type = "Opaque"
}