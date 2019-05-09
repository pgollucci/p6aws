p6_aws_kms_encrypt_re() {
    local ciphertext_blob="$1"
    local destination_key_id="$2"
    shift 2

    p6_run_write_cmd aws kms re-encrypt --ciphertext-blob $ciphertext_blob --destination-key-id $destination_key_id "$@"
}
