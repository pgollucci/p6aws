######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_working_storage_describe(gateway_arn)
#
# Arg(s):
#    gateway_arn - 
#
#
#>
######################################################################
p6_aws_storagegateway_working_storage_describe() {
    local gateway_arn="$1"
    shift 1

    p6_run_read_cmd aws storagegateway describe-working-storage --gateway-arn $gateway_arn "$@"
}