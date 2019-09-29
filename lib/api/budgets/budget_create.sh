######################################################################
#<
#
# Function:
#      = p6_aws_budgets_budget_create(account_id, budget)
#
# Arg(s):
#    account_id - 
#    budget - 
#
#
#>
######################################################################
p6_aws_budgets_budget_create() {
    local account_id="$1"
    local budget="$2"
    shift 2

    p6_run_read_cmd aws budgets create-budget --account-id $account_id --budget $budget "$@"
}