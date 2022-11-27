resource "docker_secret" "mariadb_root_password" {
  name = "mariadb_root_password-${replace(timestamp(), ":", ".")}"
  data = var.mariadb_root_password

  lifecycle {
    ignore_changes        = [name]
    create_before_destroy = true
  }
}

resource "docker_secret" "mariadb_user_password" {
  name = "mariadb_user_password-${replace(timestamp(), ":", ".")}"
  data = var.mariadb_user_password

  lifecycle {
    ignore_changes        = [name]
    create_before_destroy = true
  }
}
