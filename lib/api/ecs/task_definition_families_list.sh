p6_aws_ecs_task_definition_families_list() {

    p6_log_and_run aws ecs list-task-definition-families "$@"
}
