######################################################################
#<
#
# Function:
#      = p6_aws_backup_recovery_point_delete(backup_vault_name, recovery_point_arn)
#
# Arg(s):
#    backup_vault_name - 
#    recovery_point_arn - 
#
#
#>
######################################################################
p6_aws_backup_recovery_point_delete() {
    local backup_vault_name="$1"
    local recovery_point_arn="$2"
    shift 2

    p6_run_write_cmd aws backup delete-recovery-point --backup-vault-name $backup_vault_name --recovery-point-arn $recovery_point_arn "$@"
}