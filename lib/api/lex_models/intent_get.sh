p6_aws_lex_models_intent_get() {
    local name="$1"
    local intent_version="$2"
    shift 2

    p6_run_read_cmd aws lex-models get-intent --name $name --intent-version $intent_version "$@"
}
