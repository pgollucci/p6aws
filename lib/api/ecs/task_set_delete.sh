######################################################################
#<
#
# Function:
#      = p6_aws_ecs_task_set_delete(cluster, service, task_set)
#
# Arg(s):
#    cluster - 
#    service - 
#    task_set - 
#
#
#>
######################################################################
p6_aws_ecs_task_set_delete() {
    local cluster="$1"
    local service="$2"
    local task_set="$3"
    shift 3

    p6_run_write_cmd aws ecs delete-task-set --cluster $cluster --service $service --task-set $task_set "$@"
}