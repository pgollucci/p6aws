p6_aws_ecs_container_state_change_submit() {

    p6_log_or_run aws ecs submit-container-state-change "$@"
}
