# Pull image
resource "docker_image" "mariadb" {
  name = "mariadb"
}

resource "docker_image" "adminer" {
  name = "adminer"
}

# Create Service
resource "docker_service" "mariadb" {
  name = "${var.prefix}-mariadb"

  task_spec {
    container_spec {
      image = docker_image.mariadb.image_id
      env = {
        MARIADB_ROOT_PASSWORD_FILE = "/run/secrets/mariadb_root_password"
        MARIADB_DATABASE           = var.mariadb_database
        MARIADB_USER               = var.mariadb_user
        MARIADB_PASSWORD_FILE      = "/run/secrets/mariadb_user_password"
      }

      mounts {
        target    = "/var/lib/mysql"
        source    = docker_volume.mariadb.name
        type      = "volume"
        read_only = false
      }


      secrets {
        secret_id   = docker_secret.mariadb_root_password.id
        secret_name = docker_secret.mariadb_root_password.name
        file_name   = "/run/secrets/mariadb_root_password"
      }
      secrets {
        secret_id   = docker_secret.mariadb_user_password.id
        secret_name = docker_secret.mariadb_user_password.name
        file_name   = "/run/secrets/mariadb_user_password"
      }
    }
    networks = [docker_network.db.id]


  }
  depends_on = [
    docker_network.db,
    docker_secret.mariadb_root_password,
    docker_secret.mariadb_user_password
  ]
}


resource "docker_service" "adminer" {
  name = "${var.prefix}-adminer"

  task_spec {
    container_spec {
      image = docker_image.adminer.image_id
    }

    networks = [docker_network.db.id]
  }
  depends_on = [
    docker_network.db,
  ]

  endpoint_spec {
    ports {
      target_port    = 8080
      published_port = 1380
    }
  }
}
