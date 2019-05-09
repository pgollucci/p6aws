p6_aws_ecs_services_list() {

    p6_log_and_run aws ecs list-services "$@"
}
