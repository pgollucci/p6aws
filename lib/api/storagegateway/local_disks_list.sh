######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_local_disks_list(gateway_arn)
#
# Arg(s):
#    gateway_arn - 
#
#
#>
######################################################################
p6_aws_storagegateway_local_disks_list() {
    local gateway_arn="$1"
    shift 1

    p6_run_read_cmd aws storagegateway list-local-disks --gateway-arn $gateway_arn "$@"
}