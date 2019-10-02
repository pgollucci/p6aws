######################################################################
#<
#
# Function:
#	p6_aws_s3control_job_priority_update(account_id, job_id, priority)
#
#  Args:
#	account_id - 
#	job_id - 
#	priority - 
#
#>
######################################################################
p6_aws_s3control_job_priority_update() {
    local account_id="$1"
    local job_id="$2"
    local priority="$3"
    shift 3

    p6_run_write_cmd aws s3control update-job-priority --account-id $account_id --job-id $job_id --priority $priority "$@"
}