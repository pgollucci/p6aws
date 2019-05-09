p6_aws_greengrass_group_delete() {
    local group_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass delete-group --group-id $group_id "$@"
}
