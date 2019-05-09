p6_aws_lex_runtime_text_post() {
    local bot_name="$1"
    local bot_alias="$2"
    local user_id="$3"
    local input_text="$4"
    shift 4

    p6_log_or_run aws lex-runtime post-text --bot-name $bot_name --bot-alias $bot_alias --user-id $user_id --input-text $input_text "$@"
}
