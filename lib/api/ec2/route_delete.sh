p6_aws_ec2_route_delete() {
    local route_table_id="$1"
    shift 1

    p6_log_or_run aws ec2 delete-route --route-table-id $route_table_id "$@"
}
