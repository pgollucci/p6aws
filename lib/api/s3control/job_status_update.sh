######################################################################
#<
#
# Function:
#	p6_aws_s3control_job_status_update(account_id, job_id, requested_job_status)
#
#  Args:
#	account_id - 
#	job_id - 
#	requested_job_status - 
#
#>
######################################################################
p6_aws_s3control_job_status_update() {
    local account_id="$1"
    local job_id="$2"
    local requested_job_status="$3"
    shift 3

    p6_run_write_cmd aws s3control update-job-status --account-id $account_id --job-id $job_id --requested-job-status $requested_job_status "$@"
}