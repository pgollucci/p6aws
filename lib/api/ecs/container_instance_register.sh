p6_aws_ecs_container_instance_register() {

    p6_log_or_run aws ecs register-container-instance "$@"
}
