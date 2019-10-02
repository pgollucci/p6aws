######################################################################
#<
#
# Function:
#	p6_aws_glacier_multipart_uploads_list(account_id, vault_name)
#
#  Args:
#	account_id - 
#	vault_name - 
#
#>
######################################################################
p6_aws_glacier_multipart_uploads_list() {
    local account_id="$1"
    local vault_name="$2"
    shift 2

    p6_run_read_cmd aws glacier list-multipart-uploads --account-id $account_id --vault-name $vault_name "$@"
}