######################################################################
#<
#
# Function:
#	p6_aws_chime_user_settings_update(account_id, user_id, user_settings)
#
#  Args:
#	account_id - 
#	user_id - 
#	user_settings - 
#
#>
######################################################################
p6_aws_chime_user_settings_update() {
    local account_id="$1"
    local user_id="$2"
    local user_settings="$3"
    shift 3

    p6_run_write_cmd aws chime update-user-settings --account-id $account_id --user-id $user_id --user-settings $user_settings "$@"
}