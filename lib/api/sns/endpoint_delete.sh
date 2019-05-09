p6_aws_sns_endpoint_delete() {
    local endpoint_arn="$1"
    shift 1

    p6_log_or_run aws sns delete-endpoint --endpoint-arn $endpoint_arn "$@"
}
