######################################################################
#<
#
# Function:
#	p6_aws_iot_job_document_get(job_id)
#
#  Args:
#	job_id - 
#
#>
######################################################################
p6_aws_iot_job_document_get() {
    local job_id="$1"
    shift 1

    p6_run_read_cmd aws iot get-job-document --job-id $job_id "$@"
}