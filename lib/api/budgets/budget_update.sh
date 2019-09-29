######################################################################
#<
#
# Function:
#      = p6_aws_budgets_budget_update(account_id, new_budget)
#
# Arg(s):
#    account_id - 
#    new_budget - 
#
#
#>
######################################################################
p6_aws_budgets_budget_update() {
    local account_id="$1"
    local new_budget="$2"
    shift 2

    p6_run_read_cmd aws budgets update-budget --account-id $account_id --new-budget $new_budget "$@"
}