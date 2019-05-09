p6_aws_pinpoint_import_jobs_get() {
    local application_id="$1"
    shift 1

    p6_run_read_cmd aws pinpoint get-import-jobs --application-id $application_id "$@"
}
