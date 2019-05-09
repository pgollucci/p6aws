p6_aws_mgh_progress_update_stream_create() {
    local progress_update_stream_name="$1"
    shift 1

    p6_log_or_run aws mgh create-progress-update-stream --progress-update-stream-name $progress_update_stream_name "$@"
}
