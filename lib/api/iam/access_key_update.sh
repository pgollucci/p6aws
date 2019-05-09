p6_aws_iam_access_key_update() {
    local access_key_id="$1"
    local status="$2"
    shift 2

    p6_run_write_cmd aws iam update-access-key --access-key-id $access_key_id --status $status "$@"
}
