p6_aws_greengrass_group_versions_list() {
    local group_id="$1"
    shift 1

    p6_run_read_cmd aws greengrass list-group-versions --group-id $group_id "$@"
}
