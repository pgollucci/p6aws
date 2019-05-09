p6_aws_rds_db_subnet_group_delete() {
    local db_subnet_group_name="$1"
    shift 1

    p6_log_or_run aws rds delete-db-subnet-group --db-subnet-group-name $db_subnet_group_name "$@"
}
