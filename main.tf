provider "google" {
  credentials = file(var.credentials_file_path)
  project     = var.project_name
  region      = var.region
  zone        = var.zone
}

# Compute instance Apache server
resource "google_compute_instance" "apache-compute1" {
  name         = var.apache_instance1_name
  machine_type = var.apache_instance1_machine_type
  zone         = var.apache_instance1_zone
  tags         = var.apache_instance1_tags
  boot_disk {
    initialize_params {
      image = var.apache_instance1_boot_image
    }
  }

  network_interface {
    network = var.apache_instance1_network
      access_config {
      // Ephemeral IP      # Give none to make this instance private
    }
  }
  metadata_startup_script = var.apache_instance1_metadata_startup_script
}

resource "google_compute_firewall" "apache-server1" {
  name    = var.apache_instance1_firewall_name
  network = var.apache_instance1_network

  allow {
    protocol = var.apache_instance1_firewall_protocol
    ports    = var.apache_instance1_firewall_ports
  }

  // Allow traffic from everywhere to instances with an http-server tag
  source_ranges = var.apache_instance1_firewall_source_range
  target_tags   = var.apache_instance1_firewall_target_tags
}

resource "google_compute_instance" "apache-compute2" {
  name         = var.apache_instance2_name
  machine_type = var.apache_instance2_machine_type
  zone         = var.apache_instance2_zone
  tags         = var.apache_instance2_tags

  boot_disk {
    initialize_params {
      image = var.apache_instance2_boot_image
    }
  }

  network_interface {
    network = var.apache_instance2_network
    access_config {
      // Ephemeral IP      # do not pass access config to make this instance private
    }
  }
  metadata_startup_script = var.apache_instance2_metadata_startup_script
}

resource "google_compute_firewall" "apache-server2" {
  name    = var.apache_instance2_firewall_name
  network = var.apache_instance2_network

  allow {
    protocol = var.apache_instance2_firewall_protocol
    ports    = var.apache_instance2_firewall_ports
  }

  // Allow traffic from everywhere to instances with an http-server tag
  source_ranges = var.apache_instance2_firewall_source_range
  target_tags   = var.apache_instance2_firewall_target_tags
}

resource "google_compute_instance" "node-server1" {
  name         = var.node_instance_name
  machine_type = var.node_instance_machine_type
  zone         = var.node_instance_zone
  tags         = var.node_instance_tags

  boot_disk {
    initialize_params {
      image = var.node_instance_boot_image
    }
  }
  network_interface {
    network = var.node_instance_network
    #access_config {
    #  // Ephemeral IP   
    #}
  } 
  metadata_startup_script = var.node_instance_metadata_startup_script
}

resource "google_compute_firewall" "node-firewall1" {
  name    = var.node_instance_firewall_name
  network = var.node_instance_network

  allow {
    protocol = var.node_instance_firewall_protocol
    ports    = var.node_instance_firewall_ports
  }

  // Allow traffic from everywhere to instances with an http-server tag
  source_ranges = var.node_instance_firewall_source_range
  target_tags   = var.node_instance_firewall_target_tags
}

#########-------------Load Balancer---------##################

resource "google_compute_http_health_check" "default" {
  name                = var.health_check_name
  request_path        = var.request_path
  check_interval_sec  = var.check_interval_second
  healthy_threshold   = var.healthy_threshold
  unhealthy_threshold = var.unhealthy_threshold
  timeout_sec         = var.timeout_second
}

resource "google_compute_target_pool" "default" {
  name          = var.target_pool_name
  instances     = ["${google_compute_instance.apache-compute1.self_link}", "${google_compute_instance.apache-compute2.self_link}"]
  health_checks = [google_compute_http_health_check.default.name]
}

resource "google_compute_forwarding_rule" "default" {
  name       = var.forward_rule_name
  target     = google_compute_target_pool.default.self_link
  port_range = var.port_range_forward_rule
}

####----------DataBase MySqL----------------###################        

resource "random_id" "db_name_suffix" {
  byte_length = var.byte_length
}

resource "google_sql_database_instance" "my_sql" {
  name             = "${var.db_instance_name}-${random_id.db_name_suffix.hex}"
  database_version = var.db_instance_version


  settings {
    tier = var.db_instance_tier

    /* ip_configuration {
      private_network = google_compute_instance.node-server1.network_interface.0.network 
      dynamic "authorized_networks" {
        #for_each = google_compute_instance.node-server1
        #iterator = node-server1

        content { 
          #name  = node-server1.value.name
          #value = node-server1.value.network_interface.0.access_config.0.nat_ip
        }
      }
    } */

    ip_configuration {
      ipv4_enabled = "true"
      #authorized_networks {
      #  value = "default"
      #}
    }
  }
}

/*
resource "google_sql_user" "users" {
  name     = var.db_instance_user_name
  instance = google_sql_database_instance.my_sql.name
  password = var.db_instance_password
}
*/

resource "google_sql_database" "database" {
  name     = "${var.db_name}-${random_id.db_name_suffix.hex}"
  instance = google_sql_database_instance.my_sql.name
}
