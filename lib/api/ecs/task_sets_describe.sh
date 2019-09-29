######################################################################
#<
#
# Function:
#      = p6_aws_ecs_task_sets_describe(cluster, service)
#
# Arg(s):
#    cluster - 
#    service - 
#
#
#>
######################################################################
p6_aws_ecs_task_sets_describe() {
    local cluster="$1"
    local service="$2"
    shift 2

    p6_run_read_cmd aws ecs describe-task-sets --cluster $cluster --service $service "$@"
}