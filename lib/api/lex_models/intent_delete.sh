p6_aws_lex_models_intent_delete() {
    local name="$1"
    shift 1

    p6_log_or_run aws lex-models delete-intent --name $name "$@"
}
