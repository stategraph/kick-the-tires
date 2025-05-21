terraform {
  source = "../modules/compute"
}

inputs = {
  instance_name  = "testing"
  instance_count = "1"
}
