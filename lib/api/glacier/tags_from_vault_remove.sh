######################################################################
#<
#
# Function:
#      = p6_aws_glacier_tags_from_vault_remove(account_id, vault_name)
#
# Arg(s):
#    account_id - 
#    vault_name - 
#
#
#>
######################################################################
p6_aws_glacier_tags_from_vault_remove() {
    local account_id="$1"
    local vault_name="$2"
    shift 2

    p6_run_write_cmd aws glacier remove-tags-from-vault --account-id $account_id --vault-name $vault_name "$@"
}