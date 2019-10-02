######################################################################
#<
#
# Function:
#	p6_aws_chime_account_settings_update(account_id, account_settings)
#
#  Args:
#	account_id - 
#	account_settings - 
#
#>
######################################################################
p6_aws_chime_account_settings_update() {
    local account_id="$1"
    local account_settings="$2"
    shift 2

    p6_run_write_cmd aws chime update-account-settings --account-id $account_id --account-settings $account_settings "$@"
}