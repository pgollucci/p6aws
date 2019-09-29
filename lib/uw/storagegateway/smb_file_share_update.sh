p6_aws_storagegateway_encrypted() {
        local file_share_arn="$1"
        shift 1

    cond_log_and_run aws storagegateway update-smb-file-share --file-share-arn $file_share_arn --kms-encrypted "$@"
}

p6_aws_storagegateway_only() {
        local file_share_arn="$1"
        shift 1

    cond_log_and_run aws storagegateway update-smb-file-share --file-share-arn $file_share_arn --read-only "$@"
}

p6_aws_storagegateway_mime_type_enabled() {
        local file_share_arn="$1"
        shift 1

    cond_log_and_run aws storagegateway update-smb-file-share --file-share-arn $file_share_arn --guess-mime-type-enabled "$@"
}

p6_aws_storagegateway_pays() {
        local file_share_arn="$1"
        shift 1

    cond_log_and_run aws storagegateway update-smb-file-share --file-share-arn $file_share_arn --requester-pays "$@"
}

p6_aws_storagegateway_enabled() {
        local file_share_arn="$1"
        shift 1

    cond_log_and_run aws storagegateway update-smb-file-share --file-share-arn $file_share_arn --smbacl-enabled "$@"
}

