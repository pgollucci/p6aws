######################################################################
#<
#
# Function:
#	p6_aws_storagegateway_tape_archive_retrieve(tape_arn, gateway_arn)
#
#  Args:
#	tape_arn - 
#	gateway_arn - 
#
#>
######################################################################
p6_aws_storagegateway_tape_archive_retrieve() {
    local tape_arn="$1"
    local gateway_arn="$2"
    shift 2

    p6_run_write_cmd aws storagegateway retrieve-tape-archive --tape-arn $tape_arn --gateway-arn $gateway_arn "$@"
}