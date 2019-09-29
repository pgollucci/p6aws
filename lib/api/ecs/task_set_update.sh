######################################################################
#<
#
# Function:
#      = p6_aws_ecs_task_set_update(cluster, service, task_set, scale)
#
# Arg(s):
#    cluster - 
#    service - 
#    task_set - 
#    scale - 
#
#
#>
######################################################################
p6_aws_ecs_task_set_update() {
    local cluster="$1"
    local service="$2"
    local task_set="$3"
    local scale="$4"
    shift 4

    p6_run_write_cmd aws ecs update-task-set --cluster $cluster --service $service --task-set $task_set --scale $scale "$@"
}