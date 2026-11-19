variable "null_resource_count" {
  type    = number
  default = 1
}

resource "null_resource" "this" {
  count = var.null_resource_count

  provisioner "local-exec" {
    command = "echo 'This is a placeholder resource. No real infrastructure is provisioned.'"
  }
}
