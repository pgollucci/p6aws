p6_aws_secretsmanager_resource_untag() {
    local secret_id="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws secretsmanager untag-resource --secret-id $secret_id --tag-keys $tag_keys "$@"
}
