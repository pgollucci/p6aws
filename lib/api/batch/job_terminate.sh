######################################################################
#<
#
# Function:
#      = p6_aws_batch_job_terminate(job_id, reason)
#
# Arg(s):
#    job_id - 
#    reason - 
#
#
#>
######################################################################
p6_aws_batch_job_terminate() {
    local job_id="$1"
    local reason="$2"
    shift 2

    p6_run_write_cmd aws batch terminate-job --job-id $job_id --reason $reason "$@"
}