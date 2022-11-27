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

variable "prefix" {
  description = "Prefix for resources created in this project"
  type        = string
  default     = "globe"
}

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





