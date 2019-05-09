p6_aws_mediastore_data_object_delete() {
    local path="$1"
    shift 1

    p6_log_or_run aws mediastore-data delete-object --path $path "$@"
}
