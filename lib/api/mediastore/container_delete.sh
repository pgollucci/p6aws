p6_aws_mediastore_container_delete() {
    local container_name="$1"
    shift 1

    p6_log_or_run aws mediastore delete-container --container-name $container_name "$@"
}
