######################################################################
#<
#
# Function:
#	p6_aws_importexport_status_get(job_id)
#
#  Args:
#	job_id - 
#
#>
######################################################################
p6_aws_importexport_status_get() {
    local job_id="$1"
    shift 1

    p6_run_read_cmd aws importexport get-status --job-id $job_id "$@"
}