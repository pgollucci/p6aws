p6_aws_lex_models_import_get() {
    local import_id="$1"
    shift 1

    p6_log_and_run aws lex-models get-import --import-id $import_id "$@"
}
