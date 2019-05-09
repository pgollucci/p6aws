p6_aws_swf_decision_task_completed_respond() {
    local task_token="$1"
    shift 1

    p6_log_or_run aws swf respond-decision-task-completed --task-token $task_token "$@"
}
