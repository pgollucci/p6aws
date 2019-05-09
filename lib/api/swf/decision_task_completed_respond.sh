p6_aws_swf_decision_task_completed_respond() {
    local task_token="$1"
    shift 1

    p6_run_write_cmd aws swf respond-decision-task-completed --task-token $task_token "$@"
}
