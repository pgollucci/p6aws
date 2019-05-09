p6_aws_securityhub_insight_results_get() {
    local insight_arn="$1"
    shift 1

    p6_log_and_run aws securityhub get-insight-results --insight-arn $insight_arn "$@"
}
