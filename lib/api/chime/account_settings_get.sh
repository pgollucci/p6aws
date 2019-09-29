######################################################################
#<
#
# Function:
#      = p6_aws_chime_account_settings_get(account_id)
#
# Arg(s):
#    account_id - 
#
#
#>
######################################################################
p6_aws_chime_account_settings_get() {
    local account_id="$1"
    shift 1

    p6_run_read_cmd aws chime get-account-settings --account-id $account_id "$@"
}