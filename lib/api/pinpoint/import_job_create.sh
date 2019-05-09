p6_aws_pinpoint_import_job_create() {
    local application_id="$1"
    local import_job_request="$2"
    shift 2

    p6_log_or_run aws pinpoint create-import-job --application-id $application_id --import-job-request $import_job_request "$@"
}
