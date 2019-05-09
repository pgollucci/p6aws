p6_aws_ecs_task_stop() {
    local task="$1"
    shift 1

    p6_log_or_run aws ecs stop-task --task $task "$@"
}
