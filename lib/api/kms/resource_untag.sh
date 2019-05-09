p6_aws_kms_resource_untag() {
    local key_id="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws kms untag-resource --key-id $key_id --tag-keys $tag_keys "$@"
}
