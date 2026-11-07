locals {
  web_vm_name = "${var.vm_web_name}-${var.vm_web_image_family}-${var.default_zone}"
  db_vm_name  = "${var.vm_db_name}-${var.vm_web_image_family}-${var.vm_db_zone}"
}