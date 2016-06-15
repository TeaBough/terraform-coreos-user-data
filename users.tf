variable "users" {
  default = ""
}

resource "template_file" "users" {
  template = "${file("${path.module}/templates/users.yml")}"

  vars {
    users = "${var.users}"
  }
  lifecycle {
    create_before_destroy = true
  }
}
