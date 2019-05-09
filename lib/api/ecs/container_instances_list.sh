p6_aws_ecs_container_instances_list() {

    p6_log_and_run aws ecs list-container-instances "$@"
}
