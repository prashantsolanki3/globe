# variable "List" {
#   description = "List of Strings"
#   type        = list(string)
# }

# variable "String" {
#   description = "This is a string"
#   type        = string
#   default     = "default-value"
# }

# variable "Number" {
#   description = "This is a number"
#   type        = number
#   default     = 1
# }

# variable "Bool" {
#   description = "This is a boolean"
#   type        = bool
#   default     = true
# }

variable "cloudflare_account_id" {
  description = "Cloudflare account id"
  type        = string
}


variable "globe_cloudflare_tunnel_secret" {
  description = "Cloudflare tunnel secret for globe tunnel"
  type        = string
}
