######################################################################
#<
#
# Function:
#      = p6_aws_ecs_container_state_change_submit()
#
#
#
#>
######################################################################
p6_aws_ecs_container_state_change_submit() {

    p6_run_write_cmd aws ecs submit-container-state-change "$@"
}