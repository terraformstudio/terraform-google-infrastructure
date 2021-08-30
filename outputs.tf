# This file contains the output variable definitions for your blueprint
# Output variables are made available to the configuration using this blueprint
# The variables exposed in this file pass along information about the parts of your infrastructure to other parts of the configuration
# Read more: https://www.terraform.io/docs/language/values/outputs.html
# 
# Format:
#
#         output "<variable name>" {
#             value = "<The expression whose result is to be returned to the user>"
#             [description = <Briefly description of the purpose of each value>]
#             [sensitive = <Limits Terraform from showing its value in plan and apply>]
#             [depends_on= <Used to create additional explicit dependencies>]
#         }
# 
# E.g.:
#
#    1)   output "instance_ip_addr" {
#             value = aws_instance.server.private_ip
#         }
#
#    2)   output "db_password" {
#             value       = aws_db_instance.db.password
#             description = "The password for logging in to the database."
#             sensitive   = true
#         }
#
#    3)   output "instance_ip_addr" {
#             value       = aws_instance.server.private_ip
#             description = "The private IP address of the main server instance."
#             depends_on = [
#                 aws_security_group_rule.local_access
#             ]
#         }
# 

