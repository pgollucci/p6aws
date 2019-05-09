p6_aws_neptune_db_instance_reboot() {
    local db_instance_identifier="$1"
    shift 1

    p6_log_or_run aws neptune reboot-db-instance --db-instance-identifier $db_instance_identifier "$@"
}
