variable "enable_docker" {
  description = "Enable if you want to create docker services"
  type        = bool
  default     = false
}

variable "enable_cloudflare" {
  description = "Enable if you want cloudflare module"
  type        = bool
  default     = false
}
