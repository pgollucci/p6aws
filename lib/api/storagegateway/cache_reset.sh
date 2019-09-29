######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_cache_reset(gateway_arn)
#
# Arg(s):
#    gateway_arn - 
#
#
#>
######################################################################
p6_aws_storagegateway_cache_reset() {
    local gateway_arn="$1"
    shift 1

    p6_run_write_cmd aws storagegateway reset-cache --gateway-arn $gateway_arn "$@"
}