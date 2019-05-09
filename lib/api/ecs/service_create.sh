p6_aws_ecs_service_create() {
    local service_name="$1"
    local task_definition="$2"
    shift 2

    p6_log_or_run aws ecs create-service --service-name $service_name --task-definition $task_definition "$@"
}
