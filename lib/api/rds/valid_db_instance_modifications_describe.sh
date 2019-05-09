p6_aws_rds_valid_db_instance_modifications_describe() {
    local db_instance_identifier="$1"
    shift 1

    p6_log_and_run aws rds describe-valid-db-instance-modifications --db-instance-identifier $db_instance_identifier "$@"
}
