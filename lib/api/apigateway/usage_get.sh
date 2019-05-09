p6_aws_apigateway_usage_get() {
    local usage_plan_id="$1"
    local start_date="$2"
    local end_date="$3"
    shift 3

    p6_run_read_cmd aws apigateway get-usage --usage-plan-id $usage_plan_id --start-date $start_date --end-date $end_date "$@"
}
