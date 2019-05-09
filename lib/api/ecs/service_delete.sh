p6_aws_ecs_service_delete() {
    local service="$1"
    shift 1

    p6_log_or_run aws ecs delete-service --service $service "$@"
}
