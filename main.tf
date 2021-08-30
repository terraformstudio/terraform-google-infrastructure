# This file contains the main set of configurations for the terraform blueprint
# The following type of blocks can be declared in this file:
#     • Terraform (https://www.terraform.io/docs/language/settings/index.html)
#     • Provider (https://www.terraform.io/docs/language/providers/configuration.html)
#     • Module (https://www.terraform.io/docs/language/modules/syntax.html)
#     • Local (https://www.terraform.io/docs/language/values/locals.html)
#     • Data (https://www.terraform.io/docs/language/data-sources/index.html)
#     • Resource (https://www.terraform.io/docs/language/resources/syntax.html)
#
# Sample block for Module:
#
#     module "consul" {
#         source  = "hashicorp/consul/aws"
#         version = "0.0.5"
#
#         servers = 3
#     }
# 
# Sample block for Resource:
#
#     resource "aws_instance" "web" {
#         ami           = "ami-a1b2c3d4"
#         instance_type = "t2.micro"
#     }
#

