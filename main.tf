module "cloudflare" {
  count                          = var.enable_cloudflare == true ? 1 : 0
  source                         = "./modules/cloudflare"
  globe_cloudflare_tunnel_secret = var.globe_cloudflare_tunnel_secret
  cloudflare_account_id          = var.cloudflare_account_id
}

module "docker" {
  count  = var.enable_docker == true ? 1 : 0
  source = "./modules/docker"

  mariadb_root_password = var.mariadb_root_password
  mariadb_database      = var.mariadb_database
  mariadb_user          = var.mariadb_user
  mariadb_user_password = var.mariadb_user_password
}
