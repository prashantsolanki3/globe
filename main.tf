module "cloudflare" {
  count  = var.enable_cloudflare == true ? 1 : 0
  source = "./modules/cloudflare"
}

module "docker" {
  count  = var.enable_docker == true ? 1 : 0
  source = "./modules/docker"
}
