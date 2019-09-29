######################################################################
#<
#
# Function:
#      = p6_aws_budgets_notifications_for_budget_describe(account_id, budget_name)
#
# Arg(s):
#    account_id - 
#    budget_name - 
#
#
#>
######################################################################
p6_aws_budgets_notifications_for_budget_describe() {
    local account_id="$1"
    local budget_name="$2"
    shift 2

    p6_run_read_cmd aws budgets describe-notifications-for-budget --account-id $account_id --budget-name $budget_name "$@"
}