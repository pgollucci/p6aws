p6_aws_glacier_archive_upload() {
    local vault_name="$1"
    local account_id="$2"
    shift 2

    p6_log_or_run aws glacier upload-archive --vault-name $vault_name --account-id $account_id "$@"
}
