p6_aws_kms_data_key_generate() {
    local key_id="$1"
    shift 1

    p6_log_or_run aws kms generate-data-key --key-id $key_id "$@"
}
