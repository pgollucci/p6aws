######################################################################
#<
#
# Function:
#	p6_aws_storagegateway_gateway_software_now_update(gateway_arn)
#
#  Args:
#	gateway_arn - 
#
#>
######################################################################
p6_aws_storagegateway_gateway_software_now_update() {
    local gateway_arn="$1"
    shift 1

    p6_run_write_cmd aws storagegateway update-gateway-software-now --gateway-arn $gateway_arn "$@"
}