######################################################################
#<
#
# Function:
#      = p6_aws_ecs_task_stop(task)
#
# Arg(s):
#    task - 
#
#
#>
######################################################################
p6_aws_ecs_task_stop() {
    local task="$1"
    shift 1

    p6_run_write_cmd aws ecs stop-task --task $task "$@"
}