p6_aws_backup_backup_vault_notifications_get() {
    local backup_vault_name="$1"
    shift 1

    p6_run_read_cmd aws backup get-backup-vault-notifications --backup-vault-name $backup_vault_name "$@"
}
