p6_aws_storagegateway_smb_file_share_update() {
    local file_share_arn="$1"
    shift 1

    p6_log_or_run aws storagegateway update-smb-file-share --file-share-arn $file_share_arn "$@"
}
