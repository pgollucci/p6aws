######################################################################
#<
#
# Function:
#	p6_aws_lex_models_bot_version_delete(name, bot_version)
#
#  Args:
#	name - 
#	bot_version - 
#
#>
######################################################################
p6_aws_lex_models_bot_version_delete() {
    local name="$1"
    local bot_version="$2"
    shift 2

    p6_run_write_cmd aws lex-models delete-bot-version --name $name --bot-version $bot_version "$@"
}