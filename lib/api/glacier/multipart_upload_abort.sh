p6_aws_glacier_multipart_upload_abort() {
    local account_id="$1"
    local vault_name="$2"
    local upload_id="$3"
    shift 3

    p6_log_or_run aws glacier abort-multipart-upload --account-id $account_id --vault-name $vault_name --upload-id $upload_id "$@"
}
