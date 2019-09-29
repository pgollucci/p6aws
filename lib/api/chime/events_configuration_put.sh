######################################################################
#<
#
# Function:
#      = p6_aws_chime_events_configuration_put(account_id, bot_id)
#
# Arg(s):
#    account_id - 
#    bot_id - 
#
#
#>
######################################################################
p6_aws_chime_events_configuration_put() {
    local account_id="$1"
    local bot_id="$2"
    shift 2

    p6_run_write_cmd aws chime put-events-configuration --account-id $account_id --bot-id $bot_id "$@"
}