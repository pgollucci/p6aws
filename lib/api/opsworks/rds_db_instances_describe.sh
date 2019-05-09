p6_aws_opsworks_rds_db_instances_describe() {
    local stack_id="$1"
    shift 1

    p6_log_and_run aws opsworks describe-rds-db-instances --stack-id $stack_id "$@"
}
