######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_gateway_disable(gateway_arn)
#
# Arg(s):
#    gateway_arn - 
#
#
#>
######################################################################
p6_aws_storagegateway_gateway_disable() {
    local gateway_arn="$1"
    shift 1

    p6_run_write_cmd aws storagegateway disable-gateway --gateway-arn $gateway_arn "$@"
}