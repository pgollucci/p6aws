######################################################################
#<
#
# Function:
#	p6_aws_ecs_task_run(task_definition)
#
#  Args:
#	task_definition - 
#
#>
######################################################################
p6_aws_ecs_task_run() {
    local task_definition="$1"
    shift 1

    p6_run_write_cmd aws ecs run-task --task-definition $task_definition "$@"
}