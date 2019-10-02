######################################################################
#<
#
# Function:
#	p6_aws_storagegateway_smb_file_share_update(file_share_arn)
#
#  Args:
#	file_share_arn - 
#
#>
######################################################################
p6_aws_storagegateway_smb_file_share_update() {
    local file_share_arn="$1"
    shift 1

    p6_run_write_cmd aws storagegateway update-smb-file-share --file-share-arn $file_share_arn "$@"
}