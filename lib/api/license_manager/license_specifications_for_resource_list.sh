######################################################################
#<
#
# Function:
#	p6_aws_license_manager_license_specifications_for_resource_list(resource_arn)
#
#  Args:
#	resource_arn - 
#
#>
######################################################################
p6_aws_license_manager_license_specifications_for_resource_list() {
    local resource_arn="$1"
    shift 1

    p6_run_read_cmd aws license-manager list-license-specifications-for-resource --resource-arn $resource_arn "$@"
}