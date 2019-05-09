p6_aws_swf_activity_task_canceled_respond() {
    local task_token="$1"
    shift 1

    p6_run_write_cmd aws swf respond-activity-task-canceled --task-token $task_token "$@"
}
