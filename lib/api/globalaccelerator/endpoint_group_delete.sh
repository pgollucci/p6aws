######################################################################
#<
#
# Function:
#	p6_aws_globalaccelerator_endpoint_group_delete(endpoint_group_arn)
#
#  Args:
#	endpoint_group_arn - 
#
#>
######################################################################
p6_aws_globalaccelerator_endpoint_group_delete() {
    local endpoint_group_arn="$1"
    shift 1

    p6_run_write_cmd aws globalaccelerator delete-endpoint-group --endpoint-group-arn $endpoint_group_arn "$@"
}