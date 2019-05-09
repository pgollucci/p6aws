p6_aws_kms_key_material_import() {
    local key_id="$1"
    local import_token="$2"
    local encrypted_key_material="$3"
    shift 3

    p6_run_write_cmd aws kms import-key-material --key-id $key_id --import-token $import_token --encrypted-key-material $encrypted_key_material "$@"
}
