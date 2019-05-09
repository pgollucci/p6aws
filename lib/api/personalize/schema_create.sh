p6_aws_personalize_schema_create() {
    local name="$1"
    local schema="$2"
    shift 2

    p6_run_write_cmd aws personalize create-schema --name $name --schema $schema "$@"
}
