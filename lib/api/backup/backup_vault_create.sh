######################################################################
#<
#
# Function:
#      = p6_aws_backup_backup_vault_create(backup_vault_name)
#
# Arg(s):
#    backup_vault_name - 
#
#
#>
######################################################################
p6_aws_backup_backup_vault_create() {
    local backup_vault_name="$1"
    shift 1

    p6_run_write_cmd aws backup create-backup-vault --backup-vault-name $backup_vault_name "$@"
}