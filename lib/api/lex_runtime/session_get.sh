######################################################################
#<
#
# Function:
#      = p6_aws_lex_runtime_session_get(bot_name, bot_alias, user_id)
#
# Arg(s):
#    bot_name - 
#    bot_alias - 
#    user_id - 
#
#
#>
######################################################################
p6_aws_lex_runtime_session_get() {
    local bot_name="$1"
    local bot_alias="$2"
    local user_id="$3"
    shift 3

    p6_run_read_cmd aws lex-runtime get-session --bot-name $bot_name --bot-alias $bot_alias --user-id $user_id "$@"
}