p6_aws_mediastore_cors_policy_get() {
    local container_name="$1"
    shift 1

    p6_run_read_cmd aws mediastore get-cors-policy --container-name $container_name "$@"
}
