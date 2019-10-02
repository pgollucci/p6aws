######################################################################
#<
#
# Function:
#	p6_aws_importexport_job_cancel(job_id)
#
#  Args:
#	job_id - 
#
#>
######################################################################
p6_aws_importexport_job_cancel() {
    local job_id="$1"
    shift 1

    p6_run_write_cmd aws importexport cancel-job --job-id $job_id "$@"
}