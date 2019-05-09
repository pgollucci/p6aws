p6_aws_iam_service_last_accessed_details_get() {
    local job_id="$1"
    shift 1

    p6_log_and_run aws iam get-service-last-accessed-details --job-id $job_id "$@"
}
