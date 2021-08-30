variable "project_name" {
  description = "The ID of the Google Cloud project"
  type = string
}

variable "credentials_file_path" {
  description = "Path to the JSON file used to describe your account credentials"
  type = string
}

variable "region" {
  description = "provider's region"
  type = string
}

variable "zone" {
  description = "provier's zone"
  type = string
}

#######-----------Apache instance 1---------########

variable "apache_instance1_name" {
  description = "Name of VM"
  type = string
}

variable "apache_instance1_zone" {
  description = "GC zone"
  type = string
}

variable "apache_instance1_tags" {
  description = "tags to be given to VM"
  type = list(string)
}

variable "apache_instance1_machine_type" {
  description = "List of VM sizes: https://github.com/Eimert/terraform-google-compute-engine-instance#machine_type"
  type = string
}

variable "apache_instance1_boot_image" {
  description = "List of VM sizes: https://github.com/Eimert/terraform-google-compute-engine-instance#machine_type"
  type = string
}

variable "apache_instance1_network" {
  description = "network where VM belong"
  type = string  
}

variable "apache_instance1_metadata_startup_script" {
  description = "startup_script"
  type = string
}

variable "apache_instance1_firewall_name" {
  description = "name of firewall rule"
  type = string
}

variable "apache_instance1_firewall_protocol" {
    description = "allowed protocol of firewall rule"
    type = string
}

variable "apache_instance1_firewall_ports" {
    description = "allowed port of VM's by firewall rule"
    type = list(string)
}

variable "apache_instance1_firewall_source_range" {
  description = "source range of firewall rule"
  type = list(string)

}

variable "apache_instance1_firewall_target_tags" {
    description = "tags of VM's, for which firewall rule belong"
    type = list(string)
    #type = "list"
}


###########-----------Apache instance 2 ----------###############
variable "apache_instance2_name" {
  description = "Name of VM"
  type = string
}

variable "apache_instance2_zone" {
  description = "GC zone"
  type = string
}

variable "apache_instance2_tags" {
  description = "tags to be given to VM"
  type = list(string)
  #type = "list"
}

variable "apache_instance2_machine_type" {
  description = "List of VM sizes: https://github.com/Eimert/terraform-google-compute-engine-instance#machine_type"
  type = string  
}

variable "apache_instance2_boot_image" {
  description = "List of VM sizes: https://github.com/Eimert/terraform-google-compute-engine-instance#machine_type"
  type = string  
}

variable "apache_instance2_network" {
  description = "network where VM belong"
  type = string    
}

variable "apache_instance2_metadata_startup_script" {
  description = "startup_script"
  type = string
}

variable "apache_instance2_firewall_name" {
  description = "name of firewall rule"
  type = string
}

variable "apache_instance2_firewall_protocol" {
  description = "allowed protocol of firewall rule"
  type = string
}

variable "apache_instance2_firewall_ports" {
  description = "allowed port of VM's by firewall rule"
  type = list(string)
}

variable "apache_instance2_firewall_source_range" {
  description = "source range of firewall rule"
  type = list(string)
}

variable "apache_instance2_firewall_target_tags" {
    description = "tags of VM's, for which firewall rule belong"
    type = list(string)
    #type = "list"
}

#############---------------Node Instance---------###############

variable "node_instance_name" {
  description = "Name of VM"
  type = string
}

variable "node_instance_zone" {
  description = "GC zone"
  type = string
}

variable "node_instance_tags" {
  description = "tags to be given to VM"
  type = list(string)
  #type = "list"
}

variable "node_instance_machine_type" {
  description = "List of VM sizes: https://github.com/Eimert/terraform-google-compute-engine-instance#machine_type"
  type = string  
}

variable "node_instance_boot_image" {
  description = "List of VM sizes: https://github.com/Eimert/terraform-google-compute-engine-instance#machine_type"
  type = string  
}

variable "node_instance_network" {
  description = "network where VM belong"
  type = string
}

variable "node_instance_metadata_startup_script" {
  description = "startup_script"
  type = string
}

variable "node_instance_firewall_name" {
  description = "name of firewall rule"
  type = string
}

variable "node_instance_firewall_protocol" {
  description = "allowed protocol of firewall rule"
  type = string
}

variable "node_instance_firewall_ports" {
  description = "allowed port of VM's by firewall rule"
  type = list(string)
}

variable "node_instance_firewall_source_range" {
  description = "source range of firewall rule"
  type = list(string)
}

variable "node_instance_firewall_target_tags" {
    description = "tags of VM's, for which firewall rule belong"
    type        = list(string)
    #type = "list"
}

###########------------Load Balancer----------###########

variable "health_check_name" {
    description = "Name of health check"
    type        = string
}

variable "request_path" {
    description = "Request path of health check"
    type        = string
}

variable "check_interval_second" {
    description = "Check interval of health check"
    type        = number
}

variable "healthy_threshold" {
    description = "healthy_threshold of health check"
    type        = number
}

variable "unhealthy_threshold" {
    description = "Unhealthy_threshold of health check"
    type        = number
}

variable "timeout_second" {
    description = "Unhealthy_threshold of health check"
    type        = number
}

variable "target_pool_name" {
    description = "name of the compute target pool resource"
    type        = string
}

variable "forward_rule_name" {
    description = "name of the compute forward rule resource"
    type        = string
}

variable "port_range_forward_rule" {
    description = "name of the compute forward rule resource"
    type        = string
}

#######-------------MySQL Database-----------###########

variable "byte_length" {
    description = "byte length for random id"
    type        = number
}

variable "db_instance_name" {
    description = "name of the db instance"
    type        = string
}

variable "db_instance_version" {
    description = "varsion of the db instance"
    type        = string
}

variable "db_instance_tier" {
    description = "tier of the db instance"
    type        = string
}

/*
variable "db_instance_user_name" {
    description = "username for the instance"
    type        = string
}

variable "db_instance_password" {
    description = "password for the instance"
    type        = string
}
*/

variable "db_name" {
    description = "name of the database to be created"
}
