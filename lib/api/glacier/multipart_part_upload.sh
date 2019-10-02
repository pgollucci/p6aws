######################################################################
#<
#
# Function:
#	p6_aws_glacier_multipart_part_upload(account_id, vault_name, upload_id)
#
#  Args:
#	account_id - 
#	vault_name - 
#	upload_id - 
#
#>
######################################################################
p6_aws_glacier_multipart_part_upload() {
    local account_id="$1"
    local vault_name="$2"
    local upload_id="$3"
    shift 3

    p6_run_write_cmd aws glacier upload-multipart-part --account-id $account_id --vault-name $vault_name --upload-id $upload_id "$@"
}