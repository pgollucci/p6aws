p6_aws_apigateway_usage_plan_keys_get() {
    local usage_plan_id="$1"
    shift 1

    p6_run_read_cmd aws apigateway get-usage-plan-keys --usage-plan-id $usage_plan_id "$@"
}
