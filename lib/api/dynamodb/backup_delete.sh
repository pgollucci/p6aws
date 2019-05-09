p6_aws_dynamodb_backup_delete() {
    local backup_arn="$1"
    shift 1

    p6_run_write_cmd aws dynamodb delete-backup --backup-arn $backup_arn "$@"
}
