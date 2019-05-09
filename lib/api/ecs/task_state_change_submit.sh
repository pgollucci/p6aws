p6_aws_ecs_task_state_change_submit() {

    p6_run_write_cmd aws ecs submit-task-state-change "$@"
}
