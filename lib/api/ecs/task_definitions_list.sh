p6_aws_ecs_task_definitions_list() {

    p6_log_and_run aws ecs list-task-definitions "$@"
}
