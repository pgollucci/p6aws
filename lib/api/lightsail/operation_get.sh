######################################################################
#<
#
# Function:
#	p6_aws_lightsail_operation_get(operation_id)
#
#  Args:
#	operation_id - 
#
#>
######################################################################
p6_aws_lightsail_operation_get() {
    local operation_id="$1"
    shift 1

    p6_run_read_cmd aws lightsail get-operation --operation-id $operation_id "$@"
}