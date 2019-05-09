p6_aws_storagegateway_cache_refresh() {
    local file_share_arn="$1"
    shift 1

    p6_log_or_run aws storagegateway refresh-cache --file-share-arn $file_share_arn "$@"
}
