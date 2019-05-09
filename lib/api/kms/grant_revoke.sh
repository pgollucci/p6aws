p6_aws_kms_grant_revoke() {
    local key_id="$1"
    local grant_id="$2"
    shift 2

    p6_run_write_cmd aws kms revoke-grant --key-id $key_id --grant-id $grant_id "$@"
}
