p6_aws_personalize_schema_delete() {
    local schema_arn="$1"
    shift 1

    p6_run_write_cmd aws personalize delete-schema --schema-arn $schema_arn "$@"
}
