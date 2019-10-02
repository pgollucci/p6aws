######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_gateway_group_update(gateway_group_arn)
#
#  Args:
#	gateway_group_arn - 
#
#>
######################################################################
p6_aws_alexaforbusiness_gateway_group_update() {
    local gateway_group_arn="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness update-gateway-group --gateway-group-arn $gateway_group_arn "$@"
}