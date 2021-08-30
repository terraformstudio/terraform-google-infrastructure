# This file contains the input variable definitions for your blueprint
# The variables defined in this file will be configured as arguments in the module block
# Since all variable values must be defined, the variables that are not given default values become required arguments
# Variables with default values can also be provided as module arguments thereby overriding the default value
# Read more: https://www.terraform.io/docs/language/values/variables.html
# 
# Format:
#
#         variable "<variable name>" {
#             type = "<This argument specifies what value types are accepted for the variable>"
#             [default = <A default value which then makes the variable optional>]
#             [description = <This specifies the input variable's documentation>]
#             [validation = <A block to define validation rules, usually in addition to type constraints>]
#             [sensitive = <Limits Terraform UI output when the variable is used in configuration>]
#         }
#
# E.g.:
#
#    1)   variable "image_id" {
#             type = string
#         }
#
#    2)   variable "availability_zone_names" {
#             type    = list(string)
#             default = ["us-west-1a"]
#         }
#
#    3)   variable "image_id" {
#             type        = string
#             description = "The id of the machine image (AMI) to use for the server."
#             
#             validaton {
#                 condition     = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
#                 error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
#             }
#         }
#

