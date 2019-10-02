######################################################################
#<
#
# Function:
#	p6_aws_chime_events_configuration_get(account_id, bot_id)
#
#  Args:
#	account_id - 
#	bot_id - 
#
#>
######################################################################
p6_aws_chime_events_configuration_get() {
    local account_id="$1"
    local bot_id="$2"
    shift 2

    p6_run_read_cmd aws chime get-events-configuration --account-id $account_id --bot-id $bot_id "$@"
}