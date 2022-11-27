variable "enable_cloudflare" {
  description = "Enable if you want cloudflare module"
  type        = bool
  default     = false
}

variable "globe_cloudflare_tunnel_secret" {
  description = "Cloudflare tunnel secret for globe tunnel"
  type        = string
}

variable "cloudflare_api_token" {
  description = "Cloudflare api token"
  type        = string
}

variable "cloudflare_account_id" {
  description = "Cloudflare account id"
  type        = string
}
