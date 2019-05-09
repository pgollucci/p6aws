p6_aws_lex_runtime_session_delete() {
    local bot_name="$1"
    local bot_alias="$2"
    local user_id="$3"
    shift 3

    p6_run_write_cmd aws lex-runtime delete-session --bot-name $bot_name --bot-alias $bot_alias --user-id $user_id "$@"
}
