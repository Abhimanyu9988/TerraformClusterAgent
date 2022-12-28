variable "customNamespace" {
  type = string

  validation {
    condition     = length(var.customNamespace) > 0
    error_message = "The customNamespace value must NOT be empty or null."
  }
}

variable "helmReleaseVersion" {
  type = string
  default = "latest"
}

variable "controllerInfo_username" {
  type = string
  default = "XXXXX"
}

variable "controllerInfo_password" {
  type = string
  default = "XXXXX"
}

variable "createServiceAccount" {
  type    = bool
  default = true
}

variable "imageInfo_agentImage" {
  type    = string
  default = "docker.io/appdynamics/cluster-agent"
}

variable "imageInfo_agentTag" {
  type    = string
  default = "latest"
}

variable "imageInfo_operatorImage" {
  type    = string
  default = "docker.io/appdynamics/cluster-agent-operator"
}

variable "imageInfo_operatorTag" {
  type    = string
  default = "latest"
}

variable "imageInfo_imagePullPolicy" {
  type    = string
  default = "IfNotPresent"
}

variable "instrumentationConfig_enabled" {
  type    = bool
  default = true
}


variable "deploymentMode" {
  type    = string
  default = "PRIMARY"
}
