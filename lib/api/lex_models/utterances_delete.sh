p6_aws_lex_models_utterances_delete() {
    local bot_name="$1"
    local user_id="$2"
    shift 2

    p6_run_write_cmd aws lex-models delete-utterances --bot-name $bot_name --user-id $user_id "$@"
}
