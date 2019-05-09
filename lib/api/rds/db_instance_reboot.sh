p6_aws_rds_db_instance_reboot() {
    local db_instance_identifier="$1"
    shift 1

    p6_log_or_run aws rds reboot-db-instance --db-instance-identifier $db_instance_identifier "$@"
}
