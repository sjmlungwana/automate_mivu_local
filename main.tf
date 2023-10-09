terraform {
  required_providers {
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "2.4.3"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.3.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.4.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.4"
    }
  }
}

resource "null_resource" "local_connect" {
  connection {
    type     = "ssh"
    host     = var.host
    user     = var.user
    password = var.host_password
  }

  provisioner "local-exec" {
    command = "scp script.sh chronograf_1.10.1_amd64.deb grafana_9.5.3_amd64.deb influxdb_1.8.10_amd64.deb grafana.sh influxdb.sh chronograf.sh ${var.user}@${var.host}:/home/${var.user}"
  }

  provisioner "remote-exec" {
    inline = [
      "CHRONOGRAF=${var.chronograf}",
      "INFLUX=${var.influx}",
      "GRAFANA=${var.grafana}",
      "SALTMASTER=${var.salt-master}",
      "SALTMINION=${var.salt-minion}",
      "OPENVPN=${var.openvpn}",
      "MIMIR=${var.mimir}",
      "chmod 755 /home/${var.user}/script.sh",
      "chmod 755 /home/${var.user}/grafana.sh",
      "chmod 755 /home/${var.user}/influxdb.sh",
      "chmod 755 /home/${var.user}/chronograf.sh",
      "chmod 755 /home/${var.user}/salt-master.sh",
      "chmod 755 /home/${var.user}/salt-minion.sh",
      "sh /home/${var.user}/script.sh",
    ]
  }
}