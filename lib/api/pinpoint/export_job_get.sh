p6_aws_pinpoint_export_job_get() {
    local application_id="$1"
    local job_id="$2"
    shift 2

    p6_log_and_run aws pinpoint get-export-job --application-id $application_id --job-id $job_id "$@"
}
