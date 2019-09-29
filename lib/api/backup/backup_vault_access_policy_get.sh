######################################################################
#<
#
# Function:
#      = p6_aws_backup_backup_vault_access_policy_get(backup_vault_name)
#
# Arg(s):
#    backup_vault_name - 
#
#
#>
######################################################################
p6_aws_backup_backup_vault_access_policy_get() {
    local backup_vault_name="$1"
    shift 1

    p6_run_read_cmd aws backup get-backup-vault-access-policy --backup-vault-name $backup_vault_name "$@"
}