p6_aws_kms_custom_key_store_delete() {
    local custom_key_store_id="$1"
    shift 1

    p6_log_or_run aws kms delete-custom-key-store --custom-key-store-id $custom_key_store_id "$@"
}
