p6_aws_ecs_task_definition_describe() {
    local task_definition="$1"
    shift 1

    p6_run_read_cmd aws ecs describe-task-definition --task-definition $task_definition "$@"
}
