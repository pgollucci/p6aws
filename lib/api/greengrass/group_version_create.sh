p6_aws_greengrass_group_version_create() {
    local group_id="$1"
    shift 1

    p6_log_or_run aws greengrass create-group-version --group-id $group_id "$@"
}
