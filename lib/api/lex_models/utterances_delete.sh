p6_aws_lex_models_utterances_delete() {
    local bot_name="$1"
    local user_id="$2"
    shift 2

    p6_log_or_run aws lex-models delete-utterances --bot-name $bot_name --user-id $user_id "$@"
}
