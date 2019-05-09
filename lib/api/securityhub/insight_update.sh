p6_aws_securityhub_insight_update() {
    local insight_arn="$1"
    shift 1

    p6_log_or_run aws securityhub update-insight --insight-arn $insight_arn "$@"
}
