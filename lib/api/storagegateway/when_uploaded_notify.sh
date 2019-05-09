p6_aws_storagegateway_when_uploaded_notify() {
    local file_share_arn="$1"
    shift 1

    p6_log_or_run aws storagegateway notify-when-uploaded --file-share-arn $file_share_arn "$@"
}
