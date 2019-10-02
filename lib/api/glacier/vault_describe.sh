######################################################################
#<
#
# Function:
#	p6_aws_glacier_vault_describe(account_id, vault_name)
#
#  Args:
#	account_id - 
#	vault_name - 
#
#>
######################################################################
p6_aws_glacier_vault_describe() {
    local account_id="$1"
    local vault_name="$2"
    shift 2

    p6_run_read_cmd aws glacier describe-vault --account-id $account_id --vault-name $vault_name "$@"
}