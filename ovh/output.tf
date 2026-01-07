output "kubeconfig" {
  value = ovh_cloud_project_kube.brin-etama.kubeconfig
  sensitive = true
}