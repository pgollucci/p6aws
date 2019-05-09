p6_aws_ecs_task_state_change_submit() {

    p6_log_or_run aws ecs submit-task-state-change "$@"
}
