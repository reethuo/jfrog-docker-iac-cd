provider "google" {
    
    zone = var.zone
    project= "disco-horizon-456904-b8"
  
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
