######################################################################
#<
#
# Function:
#      = p6_aws_chime_account_update(account_id)
#
# Arg(s):
#    account_id - 
#
#
#>
######################################################################
p6_aws_chime_account_update() {
    local account_id="$1"
    shift 1

    p6_run_write_cmd aws chime update-account --account-id $account_id "$@"
}