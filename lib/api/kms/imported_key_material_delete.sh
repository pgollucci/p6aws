p6_aws_kms_imported_key_material_delete() {
    local key_id="$1"
    shift 1

    p6_log_or_run aws kms delete-imported-key-material --key-id $key_id "$@"
}
