p6_aws_kms_key_rotation_disable() {
    local key_id="$1"
    shift 1

    p6_log_or_run aws kms disable-key-rotation --key-id $key_id "$@"
}
