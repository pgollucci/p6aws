######################################################################
#<
#
# Function:
#      = p6_aws_glacier_vault_notifications_get(account_id, vault_name)
#
# Arg(s):
#    account_id - 
#    vault_name - 
#
#
#>
######################################################################
p6_aws_glacier_vault_notifications_get() {
    local account_id="$1"
    local vault_name="$2"
    shift 2

    p6_run_read_cmd aws glacier get-vault-notifications --account-id $account_id --vault-name $vault_name "$@"
}