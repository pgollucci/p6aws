######################################################################
#<
#
# Function:
#	p6_aws_backup_backup_vault_access_policy_put(backup_vault_name)
#
#  Args:
#	backup_vault_name - 
#
#>
######################################################################
p6_aws_backup_backup_vault_access_policy_put() {
    local backup_vault_name="$1"
    shift 1

    p6_run_write_cmd aws backup put-backup-vault-access-policy --backup-vault-name $backup_vault_name "$@"
}