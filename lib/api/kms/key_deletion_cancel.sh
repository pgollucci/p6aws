p6_aws_kms_key_deletion_cancel() {
    local key_id="$1"
    shift 1

    p6_log_or_run aws kms cancel-key-deletion --key-id $key_id "$@"
}
