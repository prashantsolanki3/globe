resource "docker_volume" "mariadb" {
  name = "${var.prefix}-mariadb"
}
