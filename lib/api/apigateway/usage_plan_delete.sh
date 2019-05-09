p6_aws_apigateway_usage_plan_delete() {
    local usage_plan_id="$1"
    shift 1

    p6_run_write_cmd aws apigateway delete-usage-plan --usage-plan-id $usage_plan_id "$@"
}
