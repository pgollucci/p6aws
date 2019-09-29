######################################################################
#<
#
# Function:
#      = p6_aws_storagegateway_when_uploaded_notify(file_share_arn)
#
# Arg(s):
#    file_share_arn - 
#
#
#>
######################################################################
p6_aws_storagegateway_when_uploaded_notify() {
    local file_share_arn="$1"
    shift 1

    p6_run_write_cmd aws storagegateway notify-when-uploaded --file-share-arn $file_share_arn "$@"
}