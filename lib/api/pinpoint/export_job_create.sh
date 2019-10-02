######################################################################
#<
#
# Function:
#	p6_aws_pinpoint_export_job_create(application_id, export_job_request)
#
#  Args:
#	application_id - 
#	export_job_request - 
#
#>
######################################################################
p6_aws_pinpoint_export_job_create() {
    local application_id="$1"
    local export_job_request="$2"
    shift 2

    p6_run_write_cmd aws pinpoint create-export-job --application-id $application_id --export-job-request $export_job_request "$@"
}