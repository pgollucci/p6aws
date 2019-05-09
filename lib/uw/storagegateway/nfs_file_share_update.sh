aws_storagegateway_encrypted() {
        local file_share_arn="$1"
        shift 1

    cond_log_and_run aws storagegateway update-nfs-file-share --file-share-arn $file_share_arn --kms-encrypted "$@"
}

aws_storagegateway_only() {
        local file_share_arn="$1"
        shift 1

    cond_log_and_run aws storagegateway update-nfs-file-share --file-share-arn $file_share_arn --read-only "$@"
}

aws_storagegateway_mime_type_enabled() {
        local file_share_arn="$1"
        shift 1

    cond_log_and_run aws storagegateway update-nfs-file-share --file-share-arn $file_share_arn --guess-mime-type-enabled "$@"
}

aws_storagegateway_pays() {
        local file_share_arn="$1"
        shift 1

    cond_log_and_run aws storagegateway update-nfs-file-share --file-share-arn $file_share_arn --requester-pays "$@"
}

