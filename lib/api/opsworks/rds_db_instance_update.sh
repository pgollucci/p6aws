p6_aws_opsworks_rds_db_instance_update() {
    local rds_db_instance_arn="$1"
    shift 1

    p6_log_or_run aws opsworks update-rds-db-instance --rds-db-instance-arn $rds_db_instance_arn "$@"
}
