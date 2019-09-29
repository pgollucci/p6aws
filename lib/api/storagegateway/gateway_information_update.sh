######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_gateway_information_update(gateway_arn)
#
# Arg(s):
#    gateway_arn - 
#
#
#>
######################################################################
p6_aws_storagegateway_gateway_information_update() {
    local gateway_arn="$1"
    shift 1

    p6_run_write_cmd aws storagegateway update-gateway-information --gateway-arn $gateway_arn "$@"
}