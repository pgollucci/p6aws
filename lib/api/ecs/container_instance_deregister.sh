p6_aws_ecs_container_instance_deregister() {
    local container_instance="$1"
    shift 1

    p6_log_or_run aws ecs deregister-container-instance --container-instance $container_instance "$@"
}
