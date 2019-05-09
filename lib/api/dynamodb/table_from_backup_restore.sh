p6_aws_dynamodb_table_from_backup_restore() {
    local target_table_name="$1"
    local backup_arn="$2"
    shift 2

    p6_log_or_run aws dynamodb restore-table-from-backup --target-table-name $target_table_name --backup-arn $backup_arn "$@"
}
