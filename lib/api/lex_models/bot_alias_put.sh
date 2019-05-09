p6_aws_lex_models_bot_alias_put() {
    local name="$1"
    local bot_version="$2"
    local bot_name="$3"
    shift 3

    p6_log_or_run aws lex-models put-bot-alias --name $name --bot-version $bot_version --bot-name $bot_name "$@"
}
