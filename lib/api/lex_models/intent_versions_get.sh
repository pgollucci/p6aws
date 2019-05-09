p6_aws_lex_models_intent_versions_get() {
    local name="$1"
    shift 1

    p6_log_and_run aws lex-models get-intent-versions --name $name "$@"
}
