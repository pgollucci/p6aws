######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_gateway_group_get(gateway_group_arn)
#
#  Args:
#	gateway_group_arn - 
#
#>
######################################################################
p6_aws_alexaforbusiness_gateway_group_get() {
    local gateway_group_arn="$1"
    shift 1

    p6_run_read_cmd aws alexaforbusiness get-gateway-group --gateway-group-arn $gateway_group_arn "$@"
}