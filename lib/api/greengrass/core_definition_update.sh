p6_aws_greengrass_core_definition_update() {
    local core_definition_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass update-core-definition --core-definition-id $core_definition_id "$@"
}
