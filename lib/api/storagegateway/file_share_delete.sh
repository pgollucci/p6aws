p6_aws_storagegateway_file_share_delete() {
    local file_share_arn="$1"
    shift 1

    p6_log_or_run aws storagegateway delete-file-share --file-share-arn $file_share_arn "$@"
}
