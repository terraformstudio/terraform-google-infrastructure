credentials_file_path = "coe-foundation.json"
project_name               = "coe-foundation-215839" 
region                = "us-central1"
zone                  = "us-central1-a"

apache_instance1_name = "apache-server-instance1"
apache_instance1_zone = "us-central1-a"
apache_instance1_tags = ["apache-server1"]
apache_instance1_machine_type = "n1-standard-1"
apache_instance1_boot_image = "ubuntu-os-cloud/ubuntu-1404-trusty-v20160314"
apache_instance1_network = "default"
apache_instance1_metadata_startup_script = "sudo apt-get update && sudo apt-get install apache2 -y && echo '<!doctype html><html><body><h1>Welcome Apache1</h1></body></html>' | sudo tee /var/www/html/index.html"
apache_instance1_firewall_name = "allow-tcp-apache1"
apache_instance1_firewall_protocol = "tcp"
apache_instance1_firewall_ports = ["80"]
apache_instance1_firewall_source_range = ["0.0.0.0/0"]
apache_instance1_firewall_target_tags =  ["apache-server1"]

apache_instance2_name = "apache-server-instance2"
apache_instance2_zone = "us-central1-a"
apache_instance2_tags = ["apache-server2"]
apache_instance2_machine_type = "n1-standard-1"
apache_instance2_boot_image = "ubuntu-os-cloud/ubuntu-1404-trusty-v20160314"
apache_instance2_network = "default"
apache_instance2_metadata_startup_script = "sudo apt-get update && sudo apt-get install apache2 -y && echo '<!doctype html><html><body><h1>Welcome Apache2</h1></body></html>' | sudo tee /var/www/html/index.html"
apache_instance2_firewall_name = "allow-tcp-apache2"
apache_instance2_firewall_protocol = "tcp"
apache_instance2_firewall_ports = ["80"]
apache_instance2_firewall_source_range = ["0.0.0.0/0"]
apache_instance2_firewall_target_tags =  ["apache-server2"]

node_instance_name = "node-instance"
node_instance_zone = "us-central1-a"
node_instance_tags = ["node-server1"]
node_instance_machine_type = "n1-standard-1"
node_instance_boot_image = "ubuntu-os-cloud/ubuntu-1404-trusty-v20160314"
node_instance_network = "default"
node_instance_metadata_startup_script = "sudo apt-get update && curl -sL  https://deb.nodesource.com/setup_12.x | sudo -E bash - && sudo apt-get install nodejs -y && sudo apt-get install npm && sudo apt-get update && sudo apt-get upgrade && echo '<!doctype html><html><body><h1>Welcome Node.js 1</h1></body></html>' | sudo tee /var/www/html/index.html"
node_instance_firewall_name = "node-allow-tcp1"
node_instance_firewall_protocol = "tcp"
node_instance_firewall_ports = ["80"]
node_instance_firewall_source_range = ["0.0.0.0/0"]
node_instance_firewall_target_tags =  ["node-server1"]

health_check_name = "tf-www-basic-check"
request_path = "/"
check_interval_second = 1
healthy_threshold = 1
unhealthy_threshold = 10
timeout_second = 1

target_pool_name = "tf-www-target-pool"

forward_rule_name = "tf-www-forwarding-rule"
port_range_forward_rule = "80"

byte_length = 4

db_instance_name = "database-instance-mysql"
db_instance_version = "MYSQL_5_6"
db_instance_tier = "db-f1-micro"

/*
db_instance_user_name = "vaibhav_j"
db_instance_password = "vaibhav_0011"
*/

db_name = "database-mysql"
