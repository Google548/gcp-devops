terraform {
  backend "gcs" {
    bucket = "automation-scripts"
    prefix      = "terraformstatefile"
    credentials = "terraform.json"
  }
}
