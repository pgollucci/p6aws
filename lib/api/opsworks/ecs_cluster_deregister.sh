######################################################################
#<
#
# Function:
#	p6_aws_opsworks_ecs_cluster_deregister(ecs_cluster_arn)
#
#  Args:
#	ecs_cluster_arn - 
#
#>
######################################################################
p6_aws_opsworks_ecs_cluster_deregister() {
    local ecs_cluster_arn="$1"
    shift 1

    p6_run_write_cmd aws opsworks deregister-ecs-cluster --ecs-cluster-arn $ecs_cluster_arn "$@"
}