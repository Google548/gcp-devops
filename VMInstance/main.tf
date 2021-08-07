# This is the provider used to spin up the gcloud instance
provider "google" {
 
  project = "kube-318804"
  credentials = file("kube")
  region  = "us-east1"
  
}

resource "google_compute_instance" "vm-instance" {
  name         = "jenkins-vminstance"
  machine_type = "f1-micro"
  zone         = "us-east1-b"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
    
  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}


