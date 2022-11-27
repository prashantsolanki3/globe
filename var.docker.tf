variable "enable_docker" {
  description = "Enable if you want to create docker services"
  type        = bool
  default     = false
}

variable "docker_host_user" {
  description = "Docker Host Username"
  type        = string
}

variable "docker_host" {
  description = "Docker Host or IP"
  type        = string
}

variable "docker_host_ssh_port" {
  description = "Docker Host SSH Port"
  type        = string
}

# Mariadb

variable "mariadb_root_password" {
  description = "mariadb_root_password"
  type        = string
}


variable "mariadb_database" {
  description = "mariadb_database"
  type        = string
}

variable "mariadb_user" {
  description = "mariadb_user"
  type        = string
}

variable "mariadb_user_password" {
  description = "mariadb_user_password"
  type        = string
}
