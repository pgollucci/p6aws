######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_file_share_delete(file_share_arn)
#
# Arg(s):
#    file_share_arn - 
#
#
#>
######################################################################
p6_aws_storagegateway_file_share_delete() {
    local file_share_arn="$1"
    shift 1

    p6_run_write_cmd aws storagegateway delete-file-share --file-share-arn $file_share_arn "$@"
}