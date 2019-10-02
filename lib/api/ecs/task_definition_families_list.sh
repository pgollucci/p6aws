######################################################################
#<
#
# Function:
#	p6_aws_ecs_task_definition_families_list()
#
#>
######################################################################
p6_aws_ecs_task_definition_families_list() {

    p6_run_read_cmd aws ecs list-task-definition-families "$@"
}