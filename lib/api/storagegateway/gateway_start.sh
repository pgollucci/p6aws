######################################################################
#<
#
# Function:
#	p6_aws_storagegateway_gateway_start(gateway_arn)
#
#  Args:
#	gateway_arn - 
#
#>
######################################################################
p6_aws_storagegateway_gateway_start() {
    local gateway_arn="$1"
    shift 1

    p6_run_write_cmd aws storagegateway start-gateway --gateway-arn $gateway_arn "$@"
}