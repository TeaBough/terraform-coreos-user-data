resource "template_file" "coreos" {
  template = "${file("${path.module}/templates/coreos.yml")}"

  vars {
    update    = "${template_file.update.rendered}"
    units     = "${template_file.units.rendered}"
  }
  lifecycle {
    create_before_destroy = true
  }
}
