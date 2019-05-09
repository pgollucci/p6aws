p6_aws_dynamodb_backup_describe() {
    local backup_arn="$1"
    shift 1

    p6_log_and_run aws dynamodb describe-backup --backup-arn $backup_arn "$@"
}
