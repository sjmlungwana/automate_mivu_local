variable "host_password" {
  description = "Enter your host password: "
  type        = string
}

variable "host" {
  description = "Enter your host IP address: "
  type        = string
}

variable "user" {
  description = "Enter your host username: "
  type        = string
}

variable "chronograf" {
  description = "Do you want to install chronograf: "
  type        = string
}

variable "influx" {
  description = "Do you want to install influxDB: "
  type        = string
}

variable "grafana" {
  description = "Do you want to install Grafana: "
  type        = string
}

variable "salt-master" {
  description = "Do you want to install Salt Master: "
  type        = string
}


variable "salt-minion" {
  description = "Do you want to install Salt Minion: "
  type        = string
}

variable "openvpn" {
  description = "Do you want to install OpenVPN: "
  type        = string
}

variable "mimir" {
  description = "Do you want to install Mimir: "
  type        = string
}