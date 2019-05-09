p6_aws_s3control_public_access_block_delete() {
    local account_id="$1"
    shift 1

    p6_run_write_cmd aws s3control delete-public-access-block --account-id $account_id "$@"
}
