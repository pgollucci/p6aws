p6_aws_ecs_service_update() {
    local service="$1"
    shift 1

    p6_log_or_run aws ecs update-service --service $service "$@"
}
