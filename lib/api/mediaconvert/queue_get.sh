p6_aws_mediaconvert_queue_get() {
    local name="$1"
    shift 1

    p6_log_and_run aws mediaconvert get-queue --name $name "$@"
}
