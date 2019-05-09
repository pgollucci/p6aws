p6_aws_greengrass_core_definition_versions_list() {
    local core_definition_id="$1"
    shift 1

    p6_run_read_cmd aws greengrass list-core-definition-versions --core-definition-id $core_definition_id "$@"
}
