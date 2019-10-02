######################################################################
#<
#
# Function:
#	p6_aws_opsworks_ecs_cluster_register(ecs_cluster_arn, stack_id)
#
#  Args:
#	ecs_cluster_arn - 
#	stack_id - 
#
#>
######################################################################
p6_aws_opsworks_ecs_cluster_register() {
    local ecs_cluster_arn="$1"
    local stack_id="$2"
    shift 2

    p6_run_write_cmd aws opsworks register-ecs-cluster --ecs-cluster-arn $ecs_cluster_arn --stack-id $stack_id "$@"
}