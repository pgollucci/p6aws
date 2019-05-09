p6_aws_polly_speech_synthesis_task_get() {
    local task_id="$1"
    shift 1

    p6_run_read_cmd aws polly get-speech-synthesis-task --task-id $task_id "$@"
}
