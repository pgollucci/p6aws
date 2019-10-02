######################################################################
#<
#
# Function:
#	p6_aws_lex_models_utterances_view_get(bot_name, bot_versions, status_type)
#
#  Args:
#	bot_name - 
#	bot_versions - 
#	status_type - 
#
#>
######################################################################
p6_aws_lex_models_utterances_view_get() {
    local bot_name="$1"
    local bot_versions="$2"
    local status_type="$3"
    shift 3

    p6_run_read_cmd aws lex-models get-utterances-view --bot-name $bot_name --bot-versions $bot_versions --status-type $status_type "$@"
}