p6_aws_kms_key_enable() {
    local key_id="$1"
    shift 1

    p6_run_write_cmd aws kms enable-key --key-id $key_id "$@"
}
