p6_aws_ecs_services_list() {

    p6_run_read_cmd aws ecs list-services "$@"
}
