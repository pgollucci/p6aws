######################################################################
#<
#
# Function:
#      = p6_aws_lex_models_bot_versions_get(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_lex_models_bot_versions_get() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws lex-models get-bot-versions --name $name "$@"
}