module "staging_compute_instance" {
  source = "../../modules/compute"

  instance_count = 1
  instance_name  = "staging-instance-akldjwa"
  instance_zone  = "us-central1-a"
  boot_disk_image = "debian-cloud/debian-11"
  network_name    = "default"
}
