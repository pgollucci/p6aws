######################################################################
#<
#
# Function:
#      = p6_aws_glacier_vault_lock_complete(account_id, vault_name, lock_id)
#
# Arg(s):
#    account_id - 
#    vault_name - 
#    lock_id - 
#
#
#>
######################################################################
p6_aws_glacier_vault_lock_complete() {
    local account_id="$1"
    local vault_name="$2"
    local lock_id="$3"
    shift 3

    p6_run_write_cmd aws glacier complete-vault-lock --account-id $account_id --vault-name $vault_name --lock-id $lock_id "$@"
}