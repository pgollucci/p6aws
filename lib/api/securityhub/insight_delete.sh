p6_aws_securityhub_insight_delete() {
    local insight_arn="$1"
    shift 1

    p6_log_or_run aws securityhub delete-insight --insight-arn $insight_arn "$@"
}
