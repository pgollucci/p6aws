######################################################################
#<
#
# Function:
#	p6_aws_alexaforbusiness_gateway_get(gateway_arn)
#
#  Args:
#	gateway_arn - 
#
#>
######################################################################
p6_aws_alexaforbusiness_gateway_get() {
    local gateway_arn="$1"
    shift 1

    p6_run_read_cmd aws alexaforbusiness get-gateway --gateway-arn $gateway_arn "$@"
}