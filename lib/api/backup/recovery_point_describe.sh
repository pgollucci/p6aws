p6_aws_backup_recovery_point_describe() {
    local backup_vault_name="$1"
    local recovery_point_arn="$2"
    shift 2

    p6_run_read_cmd aws backup describe-recovery-point --backup-vault-name $backup_vault_name --recovery-point-arn $recovery_point_arn "$@"
}
