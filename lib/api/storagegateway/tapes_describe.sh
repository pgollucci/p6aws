######################################################################
#<
#
# Function:
#	p6_aws_storagegateway_tapes_describe(gateway_arn)
#
#  Args:
#	gateway_arn - 
#
#>
######################################################################
p6_aws_storagegateway_tapes_describe() {
    local gateway_arn="$1"
    shift 1

    p6_run_read_cmd aws storagegateway describe-tapes --gateway-arn $gateway_arn "$@"
}