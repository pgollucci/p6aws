p6_aws_ce_cost_and_usage_get() {
    local time_period="$1"
    shift 1

    p6_run_read_cmd aws ce get-cost-and-usage --time-period $time_period "$@"
}
