p6_aws_ce_usage_forecast_get() {
    local time_period="$1"
    local metric="$2"
    local granularity="$3"
    shift 3

    p6_run_read_cmd aws ce get-usage-forecast --time-period $time_period --metric $metric --granularity $granularity "$@"
}
