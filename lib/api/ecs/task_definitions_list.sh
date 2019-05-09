p6_aws_ecs_task_definitions_list() {

    p6_run_read_cmd aws ecs list-task-definitions "$@"
}
