######################################################################
#<
#
# Function:
#	p6_aws_backup_recovery_point_restore_metadata_get(backup_vault_name, recovery_point_arn)
#
#  Args:
#	backup_vault_name - 
#	recovery_point_arn - 
#
#>
######################################################################
p6_aws_backup_recovery_point_restore_metadata_get() {
    local backup_vault_name="$1"
    local recovery_point_arn="$2"
    shift 2

    p6_run_read_cmd aws backup get-recovery-point-restore-metadata --backup-vault-name $backup_vault_name --recovery-point-arn $recovery_point_arn "$@"
}