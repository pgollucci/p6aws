p6_aws_securityhub_insight_update() {
    local insight_arn="$1"
    shift 1

    p6_run_write_cmd aws securityhub update-insight --insight-arn $insight_arn "$@"
}
