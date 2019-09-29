######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_gateway_information_describe(gateway_arn)
#
# Arg(s):
#    gateway_arn - 
#
#
#>
######################################################################
p6_aws_storagegateway_gateway_information_describe() {
    local gateway_arn="$1"
    shift 1

    p6_run_read_cmd aws storagegateway describe-gateway-information --gateway-arn $gateway_arn "$@"
}