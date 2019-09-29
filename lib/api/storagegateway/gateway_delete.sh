######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_gateway_delete(gateway_arn)
#
# Arg(s):
#    gateway_arn - 
#
#
#>
######################################################################
p6_aws_storagegateway_gateway_delete() {
    local gateway_arn="$1"
    shift 1

    p6_run_write_cmd aws storagegateway delete-gateway --gateway-arn $gateway_arn "$@"
}