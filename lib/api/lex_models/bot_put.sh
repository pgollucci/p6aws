p6_aws_lex_models_bot_put() {
    local name="$1"
    local locale="$2"
    local child_directed="$3"
    shift 3

    p6_log_or_run aws lex-models put-bot --name $name --locale $locale --child-directed $child_directed "$@"
}
