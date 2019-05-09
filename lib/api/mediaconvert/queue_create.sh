p6_aws_mediaconvert_queue_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws mediaconvert create-queue --name $name "$@"
}
