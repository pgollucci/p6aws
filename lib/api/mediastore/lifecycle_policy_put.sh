p6_aws_mediastore_lifecycle_policy_put() {
    local container_name="$1"
    local lifecycle_policy="$2"
    shift 2

    p6_log_or_run aws mediastore put-lifecycle-policy --container-name $container_name --lifecycle-policy $lifecycle_policy "$@"
}
