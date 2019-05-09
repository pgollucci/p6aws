p6_aws_clouddirectory_schema_publish() {
    local development_schema_arn="$1"
    local schema_version="$2"
    shift 2

    p6_run_write_cmd aws clouddirectory publish-schema --development-schema-arn $development_schema_arn --schema-version $schema_version "$@"
}
