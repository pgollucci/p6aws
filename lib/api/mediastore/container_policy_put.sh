p6_aws_mediastore_container_policy_put() {
    local container_name="$1"
    local policy="$2"
    shift 2

    p6_log_or_run aws mediastore put-container-policy --container-name $container_name --policy $policy "$@"
}
