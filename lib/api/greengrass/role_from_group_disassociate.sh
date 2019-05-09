p6_aws_greengrass_role_from_group_disassociate() {
    local group_id="$1"
    shift 1

    p6_log_or_run aws greengrass disassociate-role-from-group --group-id $group_id "$@"
}
