p6_aws_lightsail_load_balancer_metric_data_get() {
    local load_balancer_name="$1"
    local metric_name="$2"
    local period="$3"
    local start_time="$4"
    local end_time="$5"
    local unit="$6"
    local statistics="$7"
    shift 7

    p6_log_and_run aws lightsail get-load-balancer-metric-data --load-balancer-name $load_balancer_name --metric-name $metric_name --period $period --start-time $start_time --end-time $end_time --unit $unit --statistics $statistics "$@"
}
