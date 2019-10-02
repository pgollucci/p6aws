######################################################################
#<
#
# Function:
#	p6_aws_storagegateway_tape_delete(gateway_arn, tape_arn)
#
#  Args:
#	gateway_arn - 
#	tape_arn - 
#
#>
######################################################################
p6_aws_storagegateway_tape_delete() {
    local gateway_arn="$1"
    local tape_arn="$2"
    shift 2

    p6_run_write_cmd aws storagegateway delete-tape --gateway-arn $gateway_arn --tape-arn $tape_arn "$@"
}