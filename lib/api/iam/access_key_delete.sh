p6_aws_iam_access_key_delete() {
    local access_key_id="$1"
    shift 1

    p6_log_or_run aws iam delete-access-key --access-key-id $access_key_id "$@"
}
