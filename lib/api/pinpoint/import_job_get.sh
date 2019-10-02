######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_import_job_get(application_id, job_id)
#
#  Args:
#	application_id - 
#	job_id - 
#
#>
######################################################################
p6_aws_pinpoint_import_job_get() {
    local application_id="$1"
    local job_id="$2"
    shift 2

    p6_run_read_cmd aws pinpoint get-import-job --application-id $application_id --job-id $job_id "$@"
}