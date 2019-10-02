######################################################################
#<
#
# Function:
#	p6_aws_chime_users_invite(account_id, user_email_list)
#
#  Args:
#	account_id - 
#	user_email_list - 
#
#>
######################################################################
p6_aws_chime_users_invite() {
    local account_id="$1"
    local user_email_list="$2"
    shift 2

    p6_run_write_cmd aws chime invite-users --account-id $account_id --user-email-list $user_email_list "$@"
}