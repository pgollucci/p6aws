######################################################################
#<
#
# Function:
#	p6_aws_storagegateway_tape_pool_assign(tape_arn, pool_id)
#
#  Args:
#	tape_arn - 
#	pool_id - 
#
#>
######################################################################
p6_aws_storagegateway_tape_pool_assign() {
    local tape_arn="$1"
    local pool_id="$2"
    shift 2

    p6_run_write_cmd aws storagegateway assign-tape-pool --tape-arn $tape_arn --pool-id $pool_id "$@"
}