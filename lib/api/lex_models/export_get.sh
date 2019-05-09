p6_aws_lex_models_export_get() {
    local name="$1"
    local resource_type="$2"
    local export_type="$3"
    local resource_version="$4"
    shift 4

    p6_run_read_cmd aws lex-models get-export --name $name --resource-type $resource_type --export-type $export_type --resource-version $resource_version "$@"
}
