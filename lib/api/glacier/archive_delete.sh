p6_aws_glacier_archive_delete() {
    local account_id="$1"
    local vault_name="$2"
    local archive_id="$3"
    shift 3

    p6_log_or_run aws glacier delete-archive --account-id $account_id --vault-name $vault_name --archive-id $archive_id "$@"
}
