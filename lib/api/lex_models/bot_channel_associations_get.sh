######################################################################
#<
#
# Function:
#	p6_aws_lex_models_bot_channel_associations_get(bot_name, bot_alias)
#
#  Args:
#	bot_name - 
#	bot_alias - 
#
#>
######################################################################
p6_aws_lex_models_bot_channel_associations_get() {
    local bot_name="$1"
    local bot_alias="$2"
    shift 2

    p6_run_read_cmd aws lex-models get-bot-channel-associations --bot-name $bot_name --bot-alias $bot_alias "$@"
}