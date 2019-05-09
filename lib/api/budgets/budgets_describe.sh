p6_aws_budgets_budgets_describe() {
    local account_id="$1"
    shift 1

    p6_run_read_cmd aws budgets describe-budgets --account-id $account_id "$@"
}
