provider "google" {
  credentials = file("XXXXXXX")

  project = "XXXXX"
  region  = "southamerica-east1"
  zone    = "southamerica-east1-b"
}
