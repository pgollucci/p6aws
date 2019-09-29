######################################################################
#<
#
# Function:
#      = p6_aws_lex_models_bot_channel_association_delete(name, bot_name, bot_alias)
#
# Arg(s):
#    name - 
#    bot_name - 
#    bot_alias - 
#
#
#>
######################################################################
p6_aws_lex_models_bot_channel_association_delete() {
    local name="$1"
    local bot_name="$2"
    local bot_alias="$3"
    shift 3

    p6_run_write_cmd aws lex-models delete-bot-channel-association --name $name --bot-name $bot_name --bot-alias $bot_alias "$@"
}