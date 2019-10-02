######################################################################
#<
#
# Function:
#	p6_aws_glacier_job_initiate(account_id, vault_name)
#
#  Args:
#	account_id - 
#	vault_name - 
#
#>
######################################################################
p6_aws_glacier_job_initiate() {
    local account_id="$1"
    local vault_name="$2"
    shift 2

    p6_run_write_cmd aws glacier initiate-job --account-id $account_id --vault-name $vault_name "$@"
}