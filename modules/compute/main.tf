resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.location

  tags = ["app", "nginx"]

  boot_disk {
    initialize_params {
      image = var.image
      labels = {
        app = "nginx"
      }
    }
  }

  // Local SSD disk

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    app = "nginx"
  }

}

