p6_aws_greengrass_group_update() {
    local group_id="$1"
    shift 1

    p6_log_or_run aws greengrass update-group --group-id $group_id "$@"
}
