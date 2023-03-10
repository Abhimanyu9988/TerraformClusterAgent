
variable "APPDYNAMICS_CONTROLLER_URL" {
  type        = string
  description = "The controller host name without http(s) or port number."
  default = "https://XXXXXXX.saas.appdynamics.com"

  # validation {
  #   condition     = length(var.APPDYNAMICS_CONTROLLER_URL) > 4 && substr(var.APPDYNAMICS_CONTROLLER_URL, 0, 4) != "http"
  #   error_message = "The APPDYNAMICS_CONTROLLER_HOST_NAME value must NOT be empty or null, and must not contain http(s)."
  # }
}

variable "APPDYNAMICS_AGENT_ACCOUNT_NAME" {
  type        = string
  description = "The AppDynamics controller account name."
  default = "XXXXXX"

  validation {
    condition     = length(var.APPDYNAMICS_AGENT_ACCOUNT_NAME) > 0
    error_message = "The APPDYNAMICS_AGENT_ACCOUNT_NAME value must NOT be empty or null."
  }
}

variable "APPDYNAMICS_AGENT_ACCOUNT_ACCESS_KEY" { # sensitive value
  type = string
  default = "XXXXXX"

  validation {
    condition     = length(var.APPDYNAMICS_AGENT_ACCOUNT_ACCESS_KEY) > 0
    error_message = "The APPDYNAMICS_AGENT_ACCOUNT_ACCESS_KEY value must NOT be empty or null."
  }
  sensitive = true # valid in TF >= 0.14
}

variable "APPDYNAMICS_CONTROLLER_PORT" {
  type    = string
  default = "443"
}

variable "APPDYNAMICS_CONTROLLER_SSL_ENABLED" {
  type    = bool
  default = true
}
