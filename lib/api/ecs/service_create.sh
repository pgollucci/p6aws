p6_aws_ecs_service_create() {
    local service_name="$1"
    shift 1

    p6_run_write_cmd aws ecs create-service --service-name $service_name "$@"
}
