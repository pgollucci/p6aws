p6_aws_apigateway_usage_plan_key_delete() {
    local usage_plan_id="$1"
    local key_id="$2"
    shift 2

    p6_run_write_cmd aws apigateway delete-usage-plan-key --usage-plan-id $usage_plan_id --key-id $key_id "$@"
}
