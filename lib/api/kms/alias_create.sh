p6_aws_kms_alias_create() {
    local alias_name="$1"
    local target_key_id="$2"
    shift 2

    p6_run_write_cmd aws kms create-alias --alias-name $alias_name --target-key-id $target_key_id "$@"
}
