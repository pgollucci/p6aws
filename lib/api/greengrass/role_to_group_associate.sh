p6_aws_greengrass_role_to_group_associate() {
    local group_id="$1"
    shift 1

    p6_log_or_run aws greengrass associate-role-to-group --group-id $group_id "$@"
}
