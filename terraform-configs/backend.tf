terraform {
    # Local backend to store TF state
    backend "local" {
        path = "./terraform.tfstate"
    }
}