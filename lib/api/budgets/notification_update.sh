p6_aws_budgets_notification_update() {
    local account_id="$1"
    local budget_name="$2"
    local old_notification="$3"
    local new_notification="$4"
    shift 4

    p6_run_write_cmd aws budgets update-notification --account-id $account_id --budget-name $budget_name --old-notification $old_notification --new-notification $new_notification "$@"
}
