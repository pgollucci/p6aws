p6_aws_mediastore_access_logging_stop() {
    local container_name="$1"
    shift 1

    p6_run_write_cmd aws mediastore stop-access-logging --container-name $container_name "$@"
}
