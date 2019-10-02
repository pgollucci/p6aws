######################################################################
#<
#
# Function:
#	p6_aws_mturk_worker_block_delete(worker_id)
#
#  Args:
#	worker_id - 
#
#>
######################################################################
p6_aws_mturk_worker_block_delete() {
    local worker_id="$1"
    shift 1

    p6_run_write_cmd aws mturk delete-worker-block --worker-id $worker_id "$@"
}