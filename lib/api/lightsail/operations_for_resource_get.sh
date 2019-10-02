######################################################################
#<
#
# Function:
#	p6_aws_lightsail_operations_for_resource_get(resource_name)
#
#  Args:
#	resource_name - 
#
#>
######################################################################
p6_aws_lightsail_operations_for_resource_get() {
    local resource_name="$1"
    shift 1

    p6_run_read_cmd aws lightsail get-operations-for-resource --resource-name $resource_name "$@"
}