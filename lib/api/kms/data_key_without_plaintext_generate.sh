p6_aws_kms_data_key_without_plaintext_generate() {
    local key_id="$1"
    shift 1

    p6_run_write_cmd aws kms generate-data-key-without-plaintext --key-id $key_id "$@"
}
