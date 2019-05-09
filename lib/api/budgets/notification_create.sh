p6_aws_budgets_notification_create() {
    local account_id="$1"
    local budget_name="$2"
    local notification="$3"
    local subscribers="$4"
    shift 4

    p6_run_write_cmd aws budgets create-notification --account-id $account_id --budget-name $budget_name --notification $notification --subscribers $subscribers "$@"
}
