######################################################################
#<
#
# Function:
#      = p6_aws_ecs_container_instance_register()
#
#
#
#>
######################################################################
p6_aws_ecs_container_instance_register() {

    p6_run_write_cmd aws ecs register-container-instance "$@"
}