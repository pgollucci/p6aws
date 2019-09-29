######################################################################
#<
#
# Function:
#      = p6_aws_glacier_data_retrieval_policy_set(account_id)
#
# Arg(s):
#    account_id - 
#
#
#>
######################################################################
p6_aws_glacier_data_retrieval_policy_set() {
    local account_id="$1"
    shift 1

    p6_run_write_cmd aws glacier set-data-retrieval-policy --account-id $account_id "$@"
}