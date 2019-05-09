p6_aws_kms_resource_tag() {
    local key_id="$1"
    local tags="$2"
    shift 2

    p6_log_or_run aws kms tag-resource --key-id $key_id --tags $tags "$@"
}
