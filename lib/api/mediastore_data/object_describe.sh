p6_aws_mediastore_data_object_describe() {
    local path="$1"
    shift 1

    p6_log_and_run aws mediastore-data describe-object --path $path "$@"
}
