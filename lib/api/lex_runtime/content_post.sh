######################################################################
#<
#
# Function:
#	p6_aws_lex_runtime_content_post(bot_name, bot_alias, user_id, content_type, input_stream)
#
#  Args:
#	bot_name - 
#	bot_alias - 
#	user_id - 
#	content_type - 
#	input_stream - 
#
#>
######################################################################
p6_aws_lex_runtime_content_post() {
    local bot_name="$1"
    local bot_alias="$2"
    local user_id="$3"
    local content_type="$4"
    local input_stream="$5"
    shift 5

    p6_run_write_cmd aws lex-runtime post-content --bot-name $bot_name --bot-alias $bot_alias --user-id $user_id --content-type $content_type --input-stream $input_stream "$@"
}