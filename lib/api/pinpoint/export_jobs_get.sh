p6_aws_pinpoint_export_jobs_get() {
    local application_id="$1"
    shift 1

    p6_run_read_cmd aws pinpoint get-export-jobs --application-id $application_id "$@"
}
