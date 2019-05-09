p6_aws_dms_replication_subnet_group_modify() {
    local replication_subnet_group_identifier="$1"
    local subnet_ids="$2"
    shift 2

    p6_run_write_cmd aws dms modify-replication-subnet-group --replication-subnet-group-identifier $replication_subnet_group_identifier --subnet-ids $subnet_ids "$@"
}
