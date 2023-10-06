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