p6_aws_mediastore_lifecycle_policy_get() {
    local container_name="$1"
    shift 1

    p6_log_and_run aws mediastore get-lifecycle-policy --container-name $container_name "$@"
}
