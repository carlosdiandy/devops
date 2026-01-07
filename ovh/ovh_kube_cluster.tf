resource "ovh_cloud_project_kube" "brin-etama" {
   service_name = "${var.service_name}"
   name         = "brin-etama"
   region       = "DE1"
   version      = "1.34.2"
}

resource "ovh_cloud_project_kube_nodepool" "etama-n-pool" {
   service_name  = "${var.service_name}"
   kube_id       = ovh_cloud_project_kube.brin-etama.id
   name          = "etama-n-pool-node-8356b6" //Warning: "_" char is not allowed!
   flavor_name   = "D2-4"
   desired_nodes = 1
   max_nodes     = 1
   min_nodes     = 1
}