######################################################################
#<
#
# Function:
#	p6_aws_backup_recovery_points_by_backup_vault_list(backup_vault_name)
#
#  Args:
#	backup_vault_name - 
#
#>
######################################################################
p6_aws_backup_recovery_points_by_backup_vault_list() {
    local backup_vault_name="$1"
    shift 1

    p6_run_read_cmd aws backup list-recovery-points-by-backup-vault --backup-vault-name $backup_vault_name "$@"
}