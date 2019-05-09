p6_aws_appsync_schema_creation_start() {
    local api_id="$1"
    local definition="$2"
    shift 2

    p6_run_write_cmd aws appsync start-schema-creation --api-id $api_id --definition $definition "$@"
}
