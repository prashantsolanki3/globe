resource "docker_network" "db" {
  name   = "${var.prefix}-db"
  driver = "overlay"
}

resource "docker_network" "intranet" {
  name   = "${var.prefix}-intranet"
  driver = "overlay"
}

