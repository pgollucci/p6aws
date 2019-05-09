p6_aws_rds_db_instance_modify() {
    local db_instance_identifier="$1"
    shift 1

    p6_run_write_cmd aws rds modify-db-instance --db-instance-identifier $db_instance_identifier "$@"
}
