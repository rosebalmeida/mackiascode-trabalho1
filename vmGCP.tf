resource "google_compute_instance" "jenkins" {
    name          = "jenkins"
    machine_type  = "e2-small"
    zone          = "southamerica-east1-b"
    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-11"
        }
    }    
    metadata_startup_script = file("install_Jenkins.sh")

    network_interface {
        network = "default"
        access_config {

        }
    }   
}

resource "google_compute_instance" "lamp" {
    name          = "lamp"
    machine_type  = "e2-small"
    zone          = "southamerica-east1-b"
    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-11"
        }
    }      
    metadata_startup_script = file("install_LAMP.sh")

    network_interface {
        network = "default"
        access_config {

        }
    }
}