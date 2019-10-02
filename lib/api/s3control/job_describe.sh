######################################################################
#<
#
# Function:
#	p6_aws_s3control_job_describe(account_id, job_id)
#
#  Args:
#	account_id - 
#	job_id - 
#
#>
######################################################################
p6_aws_s3control_job_describe() {
    local account_id="$1"
    local job_id="$2"
    shift 2

    p6_run_read_cmd aws s3control describe-job --account-id $account_id --job-id $job_id "$@"
}