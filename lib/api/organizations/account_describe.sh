######################################################################
#<
#
# Function:
#      = p6_aws_organizations_account_describe(account_id)
#
# Arg(s):
#    account_id - 
#
#
#>
######################################################################
p6_aws_organizations_account_describe() {
    local account_id="$1"
    shift 1

    p6_run_read_cmd aws organizations describe-account --account-id $account_id "$@"
}