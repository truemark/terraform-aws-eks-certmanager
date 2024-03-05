resource "helm_release" "cert_manager" {
  name             = "cert-manager"
  repository       = "https://charts.jetstack.io"
  chart            = "cert-manager"
  namespace        = "cert-manager"
  create_namespace = var.create_namespace

  set {
    name  = "version"
    value = var.chart_version
    type  = "string"
  }

  set {
    name  = "namespace"
    value = "cert-manager"
    type  = "string"
  }

  set {
    name  = "create-namespace"
    value = true
  }

  set {
    name  = "installCRDs"
    value = true
  }

  timeout = 600
}
