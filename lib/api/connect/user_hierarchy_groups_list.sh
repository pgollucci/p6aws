p6_aws_connect_user_hierarchy_groups_list() {
    local instance_id="$1"
    shift 1

    p6_run_read_cmd aws connect list-user-hierarchy-groups --instance-id $instance_id "$@"
}
