p6_aws_mediastore_cors_policy_delete() {
    local container_name="$1"
    shift 1

    p6_log_or_run aws mediastore delete-cors-policy --container-name $container_name "$@"
}
