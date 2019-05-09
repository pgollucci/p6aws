p6_aws_ecs_task_definition_register() {
    local family="$1"
    local container_definitions="$2"
    shift 2

    p6_log_or_run aws ecs register-task-definition --family $family --container-definitions $container_definitions "$@"
}
