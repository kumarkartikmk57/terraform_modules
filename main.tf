module "gcp_bucket" {
    source = "./modules/gcp_bucket"
    bucket_name = var.bucket_name
    projectid = var.project_id
    location = var.location  
}

module "compute" {
    source = "./modules/compute"
    instance_name = var.instance_name
    machine_type = var.machine_type
    location = var.location
    image = var.image
  
}
