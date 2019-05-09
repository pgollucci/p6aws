p6_aws_ecs_task_definition_deregister() {
    local task_definition="$1"
    shift 1

    p6_run_write_cmd aws ecs deregister-task-definition --task-definition $task_definition "$@"
}
