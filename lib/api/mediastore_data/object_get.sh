p6_aws_mediastore_data_object_get() {
    local path="$1"
    shift 1

    p6_log_and_run aws mediastore-data get-object --path $path "$@"
}
