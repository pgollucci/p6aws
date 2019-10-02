######################################################################
#<
#
# Function:
#	p6_aws_chime_security_token_regenerate(account_id, bot_id)
#
#  Args:
#	account_id - 
#	bot_id - 
#
#>
######################################################################
p6_aws_chime_security_token_regenerate() {
    local account_id="$1"
    local bot_id="$2"
    shift 2

    p6_run_write_cmd aws chime regenerate-security-token --account-id $account_id --bot-id $bot_id "$@"
}