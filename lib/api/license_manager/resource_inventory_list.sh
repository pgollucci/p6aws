######################################################################
#<
#
# Function:
#      = p6_aws_license_manager_resource_inventory_list()
#
#
#
#>
######################################################################
p6_aws_license_manager_resource_inventory_list() {

    p6_run_read_cmd aws license-manager list-resource-inventory "$@"
}