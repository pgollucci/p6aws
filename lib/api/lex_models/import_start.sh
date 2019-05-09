p6_aws_lex_models_import_start() {
    local payload="$1"
    local resource_type="$2"
    local merge_strategy="$3"
    shift 3

    p6_log_or_run aws lex-models start-import --payload $payload --resource-type $resource_type --merge-strategy $merge_strategy "$@"
}
