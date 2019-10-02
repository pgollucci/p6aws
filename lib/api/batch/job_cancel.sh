######################################################################
#<
#
# Function:
#	p6_aws_batch_job_cancel(job_id, reason)
#
#  Args:
#	job_id - 
#	reason - 
#
#>
######################################################################
p6_aws_batch_job_cancel() {
    local job_id="$1"
    local reason="$2"
    shift 2

    p6_run_write_cmd aws batch cancel-job --job-id $job_id --reason $reason "$@"
}