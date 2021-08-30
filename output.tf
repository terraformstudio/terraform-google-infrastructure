output "connection-name-db-instance" {
  value = "${google_sql_database_instance.my_sql.connection_name}"
}

output "service-account-email-db-instance" {
  value = "${google_sql_database_instance.my_sql.service_account_email_address}"
}

output "IPv4-address-db-instance" {
  value = "${google_sql_database_instance.my_sql.ip_address.0.ip_address}"
}

output "db-name" {
  value = "${google_sql_database.database.name}"
}

output "db-instance-name" {
  value = "${google_sql_database.database.instance}"
}


##########--------------app instance-------############

output "id-app-instance" {
  value = "${google_compute_instance.node-server1.instance_id}"
}

output "self-link-app-instance" {
  value = "${google_compute_instance.node-server1.self_link}"
}

output "private-ip-app-instance" {
  value = "${google_compute_instance.node-server1.network_interface.0.network_ip}"
}

####----------Public web app----------#########
output "id-web-instance-1" {
  value = "${google_compute_instance.apache-compute1.instance_id}"
}

output "id-web-instance-2" {
  value = "${google_compute_instance.apache-compute2.instance_id}"
}

output "public-ip-web-instance-1" {
  value = "${google_compute_instance.apache-compute1.network_interface.0.access_config.0.nat_ip}"
}

output "public-ip-web-instance-2" {
  value = "${google_compute_instance.apache-compute2.network_interface.0.access_config.0.nat_ip}"
}

output "self_link-web-instance-1" {
  value = "${google_compute_instance.apache-compute1.self_link}"
}

output "self-link-web-instance-2" {
  value = "${google_compute_instance.apache-compute2.self_link}"
}

########------------load balancer----------######################
output "lb-pool-name" {
  value = "${google_compute_forwarding_rule.default.name}"
}

output "lb-pool-public-ip" {
  value = "${google_compute_forwarding_rule.default.ip_address}"
}

