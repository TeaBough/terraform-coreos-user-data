variable "units" {
  default = ""
}

// Template for units
resource "template_file" "units" {
  template = "${file("${path.module}/templates/units.yml")}"

  vars {
    units        = "${var.units}"
  }
  lifecycle {
    create_before_destroy = true
  }
}
