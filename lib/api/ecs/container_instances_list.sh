######################################################################
#<
#
# Function:
#	p6_aws_ecs_container_instances_list()
#
#>
######################################################################
p6_aws_ecs_container_instances_list() {

    p6_run_read_cmd aws ecs list-container-instances "$@"
}