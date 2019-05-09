p6_aws_cloudwatch_metric_data_put() {
    local namespace="$1"
    shift 1

    p6_run_write_cmd aws cloudwatch put-metric-data --namespace $namespace "$@"
}
