######################################################################
#<
#
# Function:
#      = p6_aws_chime_user_settings_get(account_id, user_id)
#
# Arg(s):
#    account_id - 
#    user_id - 
#
#
#>
######################################################################
p6_aws_chime_user_settings_get() {
    local account_id="$1"
    local user_id="$2"
    shift 2

    p6_run_read_cmd aws chime get-user-settings --account-id $account_id --user-id $user_id "$@"
}