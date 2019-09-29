######################################################################
#<
#
# Function:
#      = p6_aws_lex_models_bot_alias_get(name, bot_name)
#
# Arg(s):
#    name - 
#    bot_name - 
#
#
#>
######################################################################
p6_aws_lex_models_bot_alias_get() {
    local name="$1"
    local bot_name="$2"
    shift 2

    p6_run_read_cmd aws lex-models get-bot-alias --name $name --bot-name $bot_name "$@"
}