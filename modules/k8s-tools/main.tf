# GITLAB RUNNER
resource "helm_release" "gitlab_runner" {
  name              = "gitlab"
  repository        = "https://charts.gitlab.io"
  chart             = "gitlab-runner"
  version           = "0.51.1"
  namespace         = "scafe-tools"
  create_namespace  = true

  values = [
    file("./modules/k8s-tools/values/gitlab-runner.yml")
  ]

}

# akv2k8s
#resource "helm_release" "akv2k8s" {
#  name              = "akv2k8s"
#  repository        = "https://charts.spvapi.no"
#  chart             = "akv2k8s"
#  version           = "2.3.4"
#  namespace         = "akv2k8s"
#  create_namespace  = true
#
#  values = [
#    file("./modules/k8s-tools/values/akv2k8s.yml")
#  ]
#}

# CERT MANAGER LETSENCRYPT
resource "helm_release" "cert_manager" {
  name              = "cert-manager"
  repository        = "https://charts.jetstack.io"
  chart             = "cert-manager"
  version           = "v1.11.1"
  namespace         = "scafe-tools"
  create_namespace  = true

  values = [
    file("./modules/k8s-tools/values/cert-manager.yml")
  ]
}

resource "kubectl_manifest" "letsencrypt-issuers" {
    yaml_body = file("./modules/k8s-tools/manifests/letsencrypt-clusterissuer.yml")

    depends_on = [
      helm_release.cert_manager
    ]
}

resource "kubectl_manifest" "storage-classses" {
    yaml_body = file("./modules/k8s-tools/manifests/storage-classes.yml")
}


# https://learn.microsoft.com/en-us/azure/aks/hybrid/aks-edge-howto-metric-server
resource "kubectl_manifest" "metric-servers" {
    yaml_body = file("./modules/k8s-tools/manifests/metrics-server.yml")
}
