######################################################################
#<
#
# Function:
#	p6_aws_glacier_multipart_upload_abort(account_id, vault_name, upload_id)
#
#  Args:
#	account_id - 
#	vault_name - 
#	upload_id - 
#
#>
######################################################################
p6_aws_glacier_multipart_upload_abort() {
    local account_id="$1"
    local vault_name="$2"
    local upload_id="$3"
    shift 3

    p6_run_write_cmd aws glacier abort-multipart-upload --account-id $account_id --vault-name $vault_name --upload-id $upload_id "$@"
}