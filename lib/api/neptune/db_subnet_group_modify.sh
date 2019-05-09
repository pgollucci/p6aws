p6_aws_neptune_db_subnet_group_modify() {
    local db_subnet_group_name="$1"
    local subnet_ids="$2"
    shift 2

    p6_log_or_run aws neptune modify-db-subnet-group --db-subnet-group-name $db_subnet_group_name --subnet-ids $subnet_ids "$@"
}
