terraform {
  required_providers {
    minikube = {
        source = "scott-the-programmer/minikube"
        version = "0.4.3"
    }
  }
}

provider "minikube" {
    kubernetes_version = "v1.30.0"
}

# Create a minikube cluster
resource "minikube_cluster" "minikube_docker" {
  driver = "docker"
  cluster_name = "complete-devops-project"
  addons = [
    "default-storageclass",
    "storage-provisioner"
  ]
}