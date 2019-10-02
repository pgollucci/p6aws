######################################################################
#<
#
# Function:
#	p6_aws_lex_models_bot_delete(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_lex_models_bot_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws lex-models delete-bot --name $name "$@"
}