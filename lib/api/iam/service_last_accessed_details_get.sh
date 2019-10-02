######################################################################
#<
#
# Function:
#	p6_aws_iam_service_last_accessed_details_get(job_id)
#
#  Args:
#	job_id - 
#
#>
######################################################################
p6_aws_iam_service_last_accessed_details_get() {
    local job_id="$1"
    shift 1

    p6_run_read_cmd aws iam get-service-last-accessed-details --job-id $job_id "$@"
}