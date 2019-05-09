p6_aws_ecs_task_definition_deregister() {
    local task_definition="$1"
    shift 1

    p6_log_or_run aws ecs deregister-task-definition --task-definition $task_definition "$@"
}
