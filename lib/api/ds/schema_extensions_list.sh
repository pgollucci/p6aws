p6_aws_ds_schema_extensions_list() {
    local directory_id="$1"
    shift 1

    p6_run_read_cmd aws ds list-schema-extensions --directory-id $directory_id "$@"
}
