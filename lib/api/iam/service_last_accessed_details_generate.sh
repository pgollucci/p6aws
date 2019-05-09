p6_aws_iam_service_last_accessed_details_generate() {
    local arn="$1"
    shift 1

    p6_log_or_run aws iam generate-service-last-accessed-details --arn $arn "$@"
}
