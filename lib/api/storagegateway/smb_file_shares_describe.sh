p6_aws_storagegateway_smb_file_shares_describe() {
    local file_share_arn_list="$1"
    shift 1

    p6_log_and_run aws storagegateway describe-smb-file-shares --file-share-arn-list $file_share_arn_list "$@"
}
