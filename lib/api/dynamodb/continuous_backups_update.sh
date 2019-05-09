p6_aws_dynamodb_continuous_backups_update() {
    local table_name="$1"
    local point_in_time_recovery_specification="$2"
    shift 2

    p6_log_or_run aws dynamodb update-continuous-backups --table-name $table_name --point-in-time-recovery-specification $point_in_time_recovery_specification "$@"
}
