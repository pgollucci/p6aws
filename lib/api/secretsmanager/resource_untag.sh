p6_aws_secretsmanager_resource_untag() {
    local secret_id="$1"
    local tag_keys="$2"
    shift 2

    p6_log_or_run aws secretsmanager untag-resource --secret-id $secret_id --tag-keys $tag_keys "$@"
}
