######################################################################
#<
#
# Function:
#	p6_aws_storagegateway_cache_refresh(file_share_arn)
#
#  Args:
#	file_share_arn - 
#
#>
######################################################################
p6_aws_storagegateway_cache_refresh() {
    local file_share_arn="$1"
    shift 1

    p6_run_write_cmd aws storagegateway refresh-cache --file-share-arn $file_share_arn "$@"
}