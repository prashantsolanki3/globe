terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "3.28.0"
    }

    docker = {
      source  = "kreuzwerker/docker"
      version = "2.23.0"
    }
  }
}

provider "cloudflare" {
  # Set at the Workspace level
  api_token = var.cloudflare_api_token
}

provider "docker" {
  # host = "unix:///var/run/docker.sock"
  host     = "ssh://${var.docker_host_user}@${var.docker_host}:${var.docker_host_ssh_port}"
  ssh_opts = ["-o", "StrictHostKeyChecking=no", "-o", "UserKnownHostsFile=/dev/null"]
}

