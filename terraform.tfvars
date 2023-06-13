 mysql_firewall_rules= {
  clientip = {
    name             = "gitlabCI"
    start_ip_address = "13.37.127.32"
    end_ip_address   = "13.37.127.32"
  },
  kubeip = {
    name             = "KubeIpAddress"
    start_ip_address = "20.8.244.132"
    end_ip_address   = "20.8.244.132"
  }
}
