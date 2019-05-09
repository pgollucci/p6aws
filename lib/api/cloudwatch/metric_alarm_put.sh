p6_aws_cloudwatch_metric_alarm_put() {
    local alarm_name="$1"
    local evaluation_periods="$2"
    local comparison_operator="$3"
    shift 3

    p6_run_write_cmd aws cloudwatch put-metric-alarm --alarm-name $alarm_name --evaluation-periods $evaluation_periods --comparison-operator $comparison_operator "$@"
}
