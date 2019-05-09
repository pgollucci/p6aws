p6_aws_s3control_public_access_block_put() {
    local public_access_block_configuration="$1"
    local account_id="$2"
    shift 2

    p6_log_or_run aws s3control put-public-access-block --public-access-block-configuration $public_access_block_configuration --account-id $account_id "$@"
}
