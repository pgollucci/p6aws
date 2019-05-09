p6_aws_dms_replication_subnet_group_delete() {
    local replication_subnet_group_identifier="$1"
    shift 1

    p6_run_write_cmd aws dms delete-replication-subnet-group --replication-subnet-group-identifier $replication_subnet_group_identifier "$@"
}
