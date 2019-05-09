p6_aws_dynamodb_backup_create() {
    local table_name="$1"
    local backup_name="$2"
    shift 2

    p6_run_write_cmd aws dynamodb create-backup --table-name $table_name --backup-name $backup_name "$@"
}
