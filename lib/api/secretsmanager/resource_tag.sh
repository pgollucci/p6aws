p6_aws_secretsmanager_resource_tag() {
    local secret_id="$1"
    local tags="$2"
    shift 2

    p6_log_or_run aws secretsmanager tag-resource --secret-id $secret_id --tags $tags "$@"
}
