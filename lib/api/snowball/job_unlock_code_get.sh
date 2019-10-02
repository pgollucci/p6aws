######################################################################
#<
#
# Function:
#	p6_aws_snowball_job_unlock_code_get(job_id)
#
#  Args:
#	job_id - 
#
#>
######################################################################
p6_aws_snowball_job_unlock_code_get() {
    local job_id="$1"
    shift 1

    p6_run_read_cmd aws snowball get-job-unlock-code --job-id $job_id "$@"
}