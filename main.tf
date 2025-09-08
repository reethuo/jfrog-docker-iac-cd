provider "google" {
    
    zone = var.zone
    project= "ritu-pro"
  
}
resource "google_compute_instance" "inst" {
    name = var.name
    machine_type = "e2-standard-4"
    boot_disk {
      initialize_params {
        image = var.image
      }
    }
    network_interface {
        network = "default"
      access_config {
        
      }
    }
  
}
