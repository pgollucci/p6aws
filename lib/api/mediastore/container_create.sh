p6_aws_mediastore_container_create() {
    local container_name="$1"
    shift 1

    p6_log_or_run aws mediastore create-container --container-name $container_name "$@"
}
