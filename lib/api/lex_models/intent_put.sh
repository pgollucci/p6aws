p6_aws_lex_models_intent_put() {
    local name="$1"
    shift 1

    p6_log_or_run aws lex-models put-intent --name $name "$@"
}
